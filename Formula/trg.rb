class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.0/trg-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "c25e09673b41d5072ac82dc1720ca714c553501545780862d6fd05799d0f54b1"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.0/trg-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "bbfc52c4e4955376d202b693c6cdd3cdd054bcfb69695304219c017aaaed149f"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.0/trg-0.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7e066ed27098ebf9df869b94a5e6aea190ca65531dd95e4d8d903aa9540c3326"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.0/trg-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b14c575d609aef875a786ad628f4547a0b22427a1255ae67e32668f0032ff273"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
