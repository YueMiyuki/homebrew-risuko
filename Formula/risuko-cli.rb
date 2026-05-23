class RisukoCli < Formula
  desc "Risuko command-line interface — full-featured download manager"
  homepage "https://risuko.vercel.app"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-arm64.tar.gz"
      sha256 "de48c55e7e711f6c9a0a5fc0439c9b50e260d68d235d741dc174429fe8039aca"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-x64.tar.gz"
      sha256 "1e9eab32a924a2f3402be017895eac3fd00b7db936ba74b3c11d712c76ca85a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-arm64.tar.gz"
      sha256 "6476ec0d2c302bd235340552a6d552fc42039093191ea2bfd636c8ece9fce9b0"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-x64.tar.gz"
      sha256 "1205b05870ffbbb3f21f7c6ecc79061fd4358940da076ddc4eb6ca49af70ceb8"
    end
  end

  def install
    bin.install "risuko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/risuko --version")
  end
end
