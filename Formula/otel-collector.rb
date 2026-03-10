class OtelCollector < Formula
  desc "OpenTelemetry Collector Contrib - vendor-agnostic implementation"
  homepage "https://github.com/open-telemetry/opentelemetry-collector-contrib"
  url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.147.0/otelcol-contrib_0.147.0_darwin_amd64.tar.gz"
  sha256 "f0075b96fcc9d1c085ae76d7206cf2c52080a3237eee4ce36218cafb2c6cd9d5"
  version "0.147.0"
  license "Apache-2.0"

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
