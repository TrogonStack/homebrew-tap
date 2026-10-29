class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.1/trg-0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "7ed147acd0b1e42725c65a095a66a9c20a78bcf4f83adb777eacf648e85bc0be"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.1/trg-0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "bf69c7b3a832413b55e2c00df2f6c7fc7f6475cfa580d859888e420a92782114"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.1/trg-0.13.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52fa15accf8de4e88e2157418667d1b857cce254938d7249005b7f4e77012e28"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.13.1/trg-0.13.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c956a832a40c4ce5f88669a246e2bc08206ef54238c31fbf146173bab633e1d4"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
