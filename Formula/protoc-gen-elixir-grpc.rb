class ProtocGenElixirGrpc < Formula
  desc "Protocol Buffers plugin for gRPC with Elixir support"
  homepage "https://github.com/TrogonStack/protoc-gen"
  license "MIT"
  version "0.4.2"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.2/protoc-gen-elixir-grpc@v0.4.2_Darwin_arm64.tar.gz"
      sha256 "81d909ace0f6a721e15a82df45b46d97cdf744c82093060cb546b010aad012f1"
    end

    on_intel do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.2/protoc-gen-elixir-grpc@v0.4.2_Darwin_x86_64.tar.gz"
      sha256 "244c3cb2fea67f8a81c3d550e3dc69c585adeb5d7a9b251510dddf87756c847e"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.2/protoc-gen-elixir-grpc@v0.4.2_Linux_arm64.tar.gz"
      sha256 "f20e363ba19f07d33f9a2d511701178abb4548507498d7a8f32537da1833128e"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-elixir-grpc@v0.4.2/protoc-gen-elixir-grpc@v0.4.2_Linux_x86_64.tar.gz"
      sha256 "d0264903f5caf958313d3f27f897975604cd6935f968eeda9bba4a9ad2fa3be4"
    end
  end

  def install
    bin.install "protoc-gen-elixir-grpc"
  end

  test do
    system "#{bin}/protoc-gen-elixir-grpc", "--version"
  end
end
