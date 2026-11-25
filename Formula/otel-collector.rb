class OtelCollector < Formula
  desc "OpenTelemetry Collector Contrib - vendor-agnostic implementation"
  homepage "https://github.com/open-telemetry/opentelemetry-collector-contrib"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.166.0/otelcol-contrib_0.166.0_darwin_arm64.tar.gz"
      sha256 "b7d9e47c0a09572eebc314ddebcea8773608bd3910d06164c57eb46bbc09adad"
    end

    on_intel do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.166.0/otelcol-contrib_0.166.0_darwin_amd64.tar.gz"
      sha256 "7cfc362e71824d6103b8a2486b04223e50268083f6519568eb399bfc2c4358cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.166.0/otelcol-contrib_0.166.0_linux_arm64.tar.gz"
      sha256 "595e0f99e24d6e161f6fb4a0deea28ac18c4b93c5a4ee482fd3c0f85cbf15582"
    end

    on_intel do
      url "https://github.com/open-telemetry/opentelemetry-collector-releases/releases/download/v0.166.0/otelcol-contrib_0.166.0_linux_amd64.tar.gz"
      sha256 "928cb39c115d428c53211818b7e33cd8b26810b8896dc74e0bd13b8d1457c391"
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
