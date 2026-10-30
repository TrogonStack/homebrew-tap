class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.0/trg-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "4bc6c9ce7ce0e7fa6612a4f87945172f0cf685e417e0d95b5cfaa5df4584b22c"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.0/trg-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "c63f174748de5b16cd8efd1642c589c426fd6b03cc1a7d6df3bf62622d4dca64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.0/trg-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d00828c63c401f697a0df5b61ace48c787d54e3c8b9acb1d0c9c2db2b07f68f1"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.14.0/trg-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bac26dbd37f1558a4c8ab1488e49b7a61d10b7386fca76063bd0a097637cc702"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
