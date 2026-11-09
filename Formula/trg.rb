class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.2/trg-0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "7c4ad8f5aac19a52530de57f9328f5b508e8f9d208d5cdda30f54128df16e27b"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.2/trg-0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "a32b6a0021b9df3eedc06b178a1775b97f994bbd1e75eea3bcd8cf49eb5a745c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.2/trg-0.14.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7b37a1903a03be4585f604f078f937d93512f925c3f83801231900341ace7db"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.2/trg-0.14.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "905dd46828efc10c49e6c89fef2698d3f0310c7053eaa74f6bf017f011166bd9"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
