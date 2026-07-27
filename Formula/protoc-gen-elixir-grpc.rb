class ProtocGenElixirGrpc < Formula
  desc "Protocol Buffers plugin for gRPC with Elixir support"
  homepage "https://github.com/TrogonStack/protoc-gen"
  license "MIT"
  version "0.4.3"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.3/protoc-gen-elixir-grpc@v0.4.3_Darwin_arm64.tar.gz"
      sha256 "bcc1a4d8212f59e00bdcb58a12080e208a2f18ce70b4270c3b9c626f05e87d37"
    end

    on_intel do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.3/protoc-gen-elixir-grpc@v0.4.3_Darwin_x86_64.tar.gz"
      sha256 "15888f3527a0388497490e4123b6e2e5266d762874d99219b18e21ca54c8aae6"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.3/protoc-gen-elixir-grpc@v0.4.3_Linux_arm64.tar.gz"
      sha256 "e10ba9dd24aa0f60b58662897faf1183e47f8bcca12a22cea00695ddcebb6ab4"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.3/protoc-gen-elixir-grpc@v0.4.3_Linux_x86_64.tar.gz"
      sha256 "a0d0d159b0ab927c19033a9d37785c698d2a3f972da3d73e5eb50c179ccb973b"
    end
  end

  def install
    bin.install "protoc-gen-elixir-grpc"
  end

  test do
    system "#{bin}/protoc-gen-elixir-grpc", "--version"
  end
end
