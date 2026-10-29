class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.0/trg-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "a99c69d2b433395f878ec11ba75203d77b4e3a97ce714b4a3a15ad6fc27d2fb2"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.0/trg-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "b02e943004230c3c5566394c825645f1072ef11f62becac9cea48eef9a092751"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.0/trg-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a3d44bc70f921db268307dd244f4ff8cab63492a7e220d07c5a48756fbd49a65"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.0/trg-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ae1c97a3cd3cfcb5d55f06830fbbf287d848bf25b6a3711b1bf1dc7528968c6e"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
