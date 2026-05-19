class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"
  version "0.2.1"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.1/trg-0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "1fc42fc3c39c7111e9fdf47b57942ec71ea98191a144fa5ab7495904d83367e7"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.1/trg-0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "75ab093aebf11f57b51bcc1f111079f625719c0e24a58914269ff9c13e2ed86a"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.1/trg-0.2.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "aa434119bc563b9eaeb93e4f550366ce70b5cde3186a80ea1824ca16afc7477b"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.2.1/trg-0.2.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "350cdd1bea3aed41a97be817861d0f0665450a2545f02069e28e9a48a283eef5"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
