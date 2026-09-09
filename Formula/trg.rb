class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.1/trg-0.8.1-aarch64-apple-darwin.tar.gz"
      sha256 "3475ddfbd9d5b9c8bb7e868f7ac384b50834f1d4967544389225412bcb722dfd"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.1/trg-0.8.1-x86_64-apple-darwin.tar.gz"
      sha256 "870a2715cbacb1d310d24e69e45e2a5a0e7e623d8546568302bf57f188607dce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.1/trg-0.8.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5b4e1cdf4e4a50c02c76b2d6181db7486c7c711617dc70f5eab58cb701d097ec"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.1/trg-0.8.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33da20de9b01bd3a16545c8e9760aceb1b9f2556d8d9a980a8fb4c05089b8f65"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
