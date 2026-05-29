class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"
  version "0.4.0"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.0/trg-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "e6624e36642c675551fe841729bdc8bd43aa202b0cb52a44fde600407a5dee45"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.0/trg-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "0e403670f4972f67ffde931e1e402d1348de0a0cb666131117959a0111a48791"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.0/trg-0.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7812767b382b9597ab00568efd6df1f6934776c379adb24d23c8cdca82b7ebe3"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.0/trg-0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0dc4b1984e9a9cc28c113260a2ece0f21c188dbed63cf3e0ae90fd4153153bc7"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
