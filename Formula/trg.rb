class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.7.0/trg-0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "7abca628b027752f531da257c4df1c5bec101a21d88a5850fd2eba5e82ef3fb2"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.7.0/trg-0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "cc2f86c4e0e62ea029ee35a0a372a408a7e93a27575ff1b819a14fcd52b683d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.7.0/trg-0.7.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b037a661aa977a6d2d8f83d0ef9ea682efe017ba334558215e27f86e6f0bc05c"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.7.0/trg-0.7.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4c0bcd49af6382f8744d2c67073825340244abf2bd66536367cec2dba54d576c"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
