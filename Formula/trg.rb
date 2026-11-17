class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.1/trg-0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "e2619896f156222c3253aee3e3587d0ab9965448608f23da516098677d288b3b"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.1/trg-0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "8556753c9cbca2f48123c2c091fbf66872a1fe6e361718c5289a4163f5d582ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.1/trg-0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b86ef072cb36917c64a620cf015319a96ffcd241dcbbb86009f0452be735519"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.16.1/trg-0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9537871e811c9d156839b6fbabadf8ce173a66b8625b96f8f9e3abcdbf430e75"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
