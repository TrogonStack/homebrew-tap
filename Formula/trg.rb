class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.12.0/trg-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "ff008b374b3aa2ddb63aa2c1b2f494b85beda80338cbaafc3e9114df9781f814"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.12.0/trg-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "99c6e8f643b7fa12cef44f76028a60805fe5594d22a66b4b79b2383b4f2159b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.12.0/trg-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd222a8f647529cb9143333d3b64ba2948cd6ba361b5cc20be6d9af9870de52f"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.12.0/trg-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58cd20b25e79c787f440edb877f4fde59678f9a8aba26084bd22d7f597aa6274"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
