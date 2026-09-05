class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.2/trg-0.4.2-aarch64-apple-darwin.tar.gz"
      sha256 "7cfe4b495712dc44d3959cf74b914ef045de39ee4c3ca76ba0851667d589ab14"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.2/trg-0.4.2-x86_64-apple-darwin.tar.gz"
      sha256 "56f38b5ddf84106dec8c669587718cb8d9da04fa95b08d30176a95dd52faa510"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.2/trg-0.4.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2ff9ed9fa94d8eb834369a0401a86ca682e5949eea51af3a07dadd5c2ccdc639"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.4.2/trg-0.4.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bdabfe7b0b2f5dd3d65d3aa7dab89a20eaf61bebb211763273b7eb9839c14e4b"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
