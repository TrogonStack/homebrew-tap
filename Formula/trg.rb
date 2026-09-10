class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.9.0/trg-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "d6274812cfa7d891de2142438f971fb6d3529048cd24458faae3b56ab33eecd5"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.9.0/trg-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "ee2286bb12fdabfb5adbf0a9a31b307274524fbacaebd680098331461ef8ba68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.9.0/trg-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "db3f24d97e26959917dbad0ca30ca968ca4daa0c1c14ddaccc08f21439a76e20"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.9.0/trg-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e7f87d938c323cd46740b047abe38f2ab57ecf25f25f789b08a3c44c217c7cd4"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
