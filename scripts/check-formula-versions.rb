# frozen_string_literal: true

require "uri"

# Verifies that Homebrew resolves each formula to the version in its GitHub release tag.
module FormulaVersionCheck
  class Error < StandardError; end

  module_function

  def version_from_url(formula, url)
    release_match = url.match(%r{/releases/download/([^/]+)/})
    raise Error, "#{formula.full_name}: URL does not contain a GitHub release tag: #{url}" unless release_match

    release_tag = URI.decode_www_form_component(release_match[1])
    version_match = release_tag.match(/([0-9]+(?:\.[0-9]+)+)\z/)
    raise Error, "#{formula.full_name}: release tag does not end in a version: #{release_tag}" unless version_match

    version_match[1]
  end

  # Scans the formula's own source rather than formula.stable.url, since the
  # latter only reflects the OS/arch block resolved on this runner and would
  # miss stale URLs left behind in the other on_macos/on_linux blocks.
  def expected_versions(formula)
    urls = formula.path.read.scan(/url\s+"([^"]+)"/).flatten
    raise Error, "#{formula.full_name}: no url stanzas found" if urls.empty?

    urls.map { |url| version_from_url(formula, url) }.uniq
  end

  def main(names = ARGV)
    raise Error, "No formulae provided." if names.empty?

    problems = names.flat_map do |name|
      formula = Formula[name]
      actual = formula.version.to_s

      expected_versions(formula).filter_map do |expected|
        next if actual == expected

        "#{formula.full_name}: expected #{expected} from a release tag, but Homebrew resolved #{actual}"
      end
    end

    unless problems.empty?
      problems.each { |problem| warn problem }
      return 1
    end

    puts "Verified versions for #{names.length} formulae."
    0
  rescue Error => e
    warn e.message
    1
  end
end

exit FormulaVersionCheck.main if __FILE__ == $PROGRAM_NAME
