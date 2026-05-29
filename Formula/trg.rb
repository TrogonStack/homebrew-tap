class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"
  version "0.4.1"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.1/trg-0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "ada72692bd752ef2f8d35618c466635cfa8b2e84066cf777d71b9f9b420c0a71"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.1/trg-0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "2c501e713b229664416578cab55a5e7ad78672c3a3ca8c01779f243d5c4ff2ba"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.1/trg-0.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "91c677ec4ce5ecf725757c7597e59994c4d04849d2cc868ec02127576a6ed738"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.1/trg-0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a14761127f3a3933c330d2abb760b33557d6d771d905449d1a1e3dd882291593"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
