class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.11.0/trg-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "bbb1a33469e269d8323c8fe8b92d1ac1105082f2cc2d920ce2ccf16550f83beb"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.11.0/trg-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "33e0d40fadc2a8cd34657198b69f858a501cf1ab5ebfe7b6ecebdd9202242cb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.11.0/trg-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0875632d456c8b1317079d646248e4cd148ed2963f5dbd7f781f92144b95f7a8"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.11.0/trg-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "087e8d10906dc7ae171f0465e49b9459c75f461af18f272ed34f82ba6645110d"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
