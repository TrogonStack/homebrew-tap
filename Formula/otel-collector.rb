class OtelCollector < Formula
  desc "OpenTelemetry Collector Contrib - vendor-agnostic implementation"
  homepage "https://github.com/open-telemetry/opentelemetry-collector-contrib"
  url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.150.1/otelcol-contrib_0.150.1_darwin_amd64.tar.gz"
  sha256 "c014d33c272b081a75d672d859c16eaae50443bc51b6704c04860881ab0c932c"
  version "0.150.1"
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
