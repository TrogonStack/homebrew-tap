class ProtocGenConnectGoServicestruct < Formula
  desc "Protocol Buffers plugin for gRPC-Connect with Go service struct support"
  homepage "https://github.com/TrogonStack/protoc-gen"
  license "MIT"
  version "0.2.0"

  on_macos do
    on_arm64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-connect-go-servicestruct@v0.2.0/protoc-gen-connect-go-servicestruct@v0.2.0_Darwin_arm64.tar.gz"
      sha256 "8de46260aec64f51f23bef54a7202a3cae76d11ce4c71123b9d01a51cb3cec3d"
    end

    on_intel do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-connect-go-servicestruct@v0.2.0/protoc-gen-connect-go-servicestruct@v0.2.0_Darwin_x86_64.tar.gz"
      sha256 "9b225f13ed7ec6518d0e71486f95c247b240493ae15be7b6706443bdc7aa7d68"
    end
  end

  on_linux do
    on_arm64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-connect-go-servicestruct@v0.2.0/protoc-gen-connect-go-servicestruct@v0.2.0_Linux_arm64.tar.gz"
      sha256 "f99390273919fe85c11bee13fda7ee2c5f052ffc96d176edee9349a52c34d5d7"
    end

    on_x86_64 do
      url "https://github.com/TrogonStack/protoc-gen/releases/download/protoc-gen-connect-go-servicestruct@v0.2.0/protoc-gen-connect-go-servicestruct@v0.2.0_Linux_x86_64.tar.gz"
      sha256 "ceb785e587bcdb4d913d576cba870f729fe64fc6acc5a7cf30bf617dcc91cfc8"
    end
  end

  def install
    bin.install "protoc-gen-connect-go-servicestruct"
  end

  test do
    system "#{bin}/protoc-gen-connect-go-servicestruct", "--version"
  end
end
