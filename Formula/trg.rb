class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.10.0/trg-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "9c1cb7090ca8d689660043bcb1465cc6b6fea83e74bcc28b7ba6f73e4bbf5959"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.10.0/trg-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "a0f74b8f5692d51510df0d2b416d16d48041317cb259c93aeb754e94a0f6934f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.10.0/trg-0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9f7f35e9bd265f8622a34a1716b1ffaa4ddfa149e77596c74b4268df60c680dd"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.10.0/trg-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3988eaba74c7e1dbb686094c5b16f38f86e23dfe2c896fb376a0a70b2142426b"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
