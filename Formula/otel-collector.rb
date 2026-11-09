class OtelCollector < Formula
  desc "OpenTelemetry Collector Contrib - vendor-agnostic implementation"
  homepage "https://github.com/open-telemetry/opentelemetry-collector-contrib"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.165.0/otelcol-contrib_0.165.0_darwin_arm64.tar.gz"
      sha256 "f9a0ed310e9beeb0fabca9d9c24bd0d3467f6339e3207710dbd66a6adf1298f6"
    end

    on_intel do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.165.0/otelcol-contrib_0.165.0_darwin_amd64.tar.gz"
      sha256 "7d14e5c14bcb930d55f2bd5d3fbb3734be5fd2889698488e65e488efda5473c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.165.0/otelcol-contrib_0.165.0_linux_arm64.tar.gz"
      sha256 "376420729c862230807bc89811d07d10031eaeca3f6481fe371a2bdcefd2c8fa"
    end

    on_intel do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.165.0/otelcol-contrib_0.165.0_linux_amd64.tar.gz"
      sha256 "bd6e73d94bf3359ad6fac25529a8ee308adb9b0b8a0e8af034ed3891fbe5aa33"
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
