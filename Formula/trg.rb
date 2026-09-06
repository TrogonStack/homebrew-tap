class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.5.0/trg-0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "d6d14b1d07eea45ec0fb0895b5ca328ff59081fb765f9b8f65c3a89dafeace41"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.5.0/trg-0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "9e7822311c5ee6f69756139753e8fccdc07e687aa6f18503fe6903740e3bfde9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.5.0/trg-0.5.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "efdfeba3dcb9db4cb8cee1e93741f71b4f91dc118b68d9c381b35708bed8232e"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.5.0/trg-0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b57be204dbe1a9deeecf1ec476b2e834e0988189f0f17a36a9a2fec14e649005"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
