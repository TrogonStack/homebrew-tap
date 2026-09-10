class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.2/trg-0.8.2-aarch64-apple-darwin.tar.gz"
      sha256 "90a92d8bc684662c53fbdd6dc937859d5a3ecdc916208761931718258a4d2840"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.2/trg-0.8.2-x86_64-apple-darwin.tar.gz"
      sha256 "3c64cd7ebd9dec34672d7b5e8e40716f09731baf31a496f79ef0f75926879745"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.2/trg-0.8.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6e9cf7f48b973ea22620e46a5eb0edcb3e833aaa41bb6fec970536a316e8273a"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.2/trg-0.8.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d2014ca56b59078e96e650772e55533decbe11efa9e007b418a47fe2f84027ba"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
