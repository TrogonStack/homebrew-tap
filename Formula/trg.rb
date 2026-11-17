class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.0/trg-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "5b235d04163bb9d1ef2c958803dde2c36c542741f6d9c1f09bee2abc59ac6055"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.0/trg-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "733b1051fc7e26f61c34ebd7875390e291eeebafbda6f0bf4c7c74866241f1b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.0/trg-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c4112e458bc3fbdb58c9abbf60d655614a1f86f99a3e58662c32853aca8f6e4d"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.0/trg-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "903d123d65c8daf92a932c31403e1ae11ef92811deaa966688def1a441074879"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
