class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.6.0/trg-0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "f3edc6cd4df98bc857eb4103247c37207f21f0fed3b206f8dab9578290bbbcfb"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.6.0/trg-0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "2b5616be389fa0efba4cba23c527bf7fb3cb0e258358aedde08bdd93bcc169fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.6.0/trg-0.6.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6210f445629b1d1a82e19376e1431de4deca622b35b9142c65dc2bd05452a808"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.6.0/trg-0.6.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "60fa265b0f9f20a14057c3b82613b3549252a6d263451d20db584c4e3bd5097a"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
