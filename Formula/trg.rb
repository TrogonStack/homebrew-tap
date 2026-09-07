class Trg < Formula
  desc "CLI tool for scaffolding and managing TrogonStack projects"
  homepage "https://github.com/TrogonStack/rusty-monorepo"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.0/trg-0.8.0-aarch64-apple-darwin.tar.gz"
      sha256 "efa278f5675d47114040ce30d398c4a5568af08c39fa9fb1730bfbbab5323ad8"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.0/trg-0.8.0-x86_64-apple-darwin.tar.gz"
      sha256 "c5af8f412e31aa80a86ac2c0b49218d564ac552bcfdf03fbb8c1f04ef16c3829"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.0/trg-0.8.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b776c88d9a4d9cab7c38e4971f13a7aca6a57e7be247c87fb673493e02a14e6e"
    end

    on_intel do
      url "https://github.com/TrogonStack/rusty-monorepo/releases/download/trg@v0.8.0/trg-0.8.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "809b36f46ce8b8dc9713332ab4a57ac4403b23c773149225810eb955c9c243d7"
    end
  end

  def install
    bin.install "trg"
  end

  test do
    system bin/"trg", "--help"
  end
end
