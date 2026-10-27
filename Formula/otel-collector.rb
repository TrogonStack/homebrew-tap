class OtelCollector < Formula
  desc "OpenTelemetry Collector Contrib - vendor-agnostic implementation"
  homepage "https://github.com/open-telemetry/opentelemetry-collector-contrib"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.164.0/otelcol-contrib_0.164.0_darwin_arm64.tar.gz"
      sha256 "af6a0c56886e3cc36ccebe849fa167bad2bc47a97a48fd8497a0d6f93d0cf73a"
    end

    on_intel do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.164.0/otelcol-contrib_0.164.0_darwin_amd64.tar.gz"
      sha256 "b53ab416e9a90625c1453692f1d3a3c4eba72904424e31516866f73064b65d4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.164.0/otelcol-contrib_0.164.0_linux_arm64.tar.gz"
      sha256 "8bd4a7f443405522a2175cc1a8675f9e99cc047c7181b73461efd08efbba38d3"
    end

    on_intel do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.164.0/otelcol-contrib_0.164.0_linux_amd64.tar.gz"
      sha256 "f0c1ce9f661399beb4a58b711924716e08ea70c3802db0715fcfde3cbbada2d4"
    end
  end

  def install
    bin.install "otelcol-contrib"
  end

  service do
    run [opt_bin/"otelcol-contrib", "--config=#{etc}/otelcol-contrib/config.yaml"]
    run_type :immediate
    keep_alive true
    log_path var/"log/otelcol-contrib.log"
    error_log_path var/"log/otelcol-contrib.err.log"
  end

  def post_install
    (etc/"otelcol-contrib").mkpath
  end

  def caveats
    <<~EOS
      Configuration file: #{etc}/otelcol-contrib/config.yaml
      Service logs: #{var}/log/otelcol-contrib.log

      To start the service:
        brew services start otelcol-contrib

      To check service status:
        brew services list | grep otelcol-contrib

      To view logs:
        tail -f #{var}/log/otelcol-contrib.log
    EOS
  end
end
