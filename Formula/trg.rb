class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"
  version "0.3.0"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.3.0/trg-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "c5268714d30b851cc1a7f8bb6d7a212440f6e6d5894ce3cd9edb78a92850495d"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.3.0/trg-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "fbb825318b508859f2fb78f154b8f7baca3e81b2dc34b9403a719072d2d41f05"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.3.0/trg-0.3.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9a53869cc38c6a05b6e413cd0b180333713d71c2d0a186e66319e132170a4c7"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.3.0/trg-0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa5cdcfdcf837d99729750bfb2fcf2b4b0858d8fcde793e8e06ae60fe6b2a11c"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
