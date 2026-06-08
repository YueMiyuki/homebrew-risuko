class RisukoCli < Formula
  desc "Risuko command-line interface — full-featured download manager"
  homepage "https://risuko.vercel.app"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-arm64.tar.gz"
      sha256 "f2a281c50832e49a92e94e97e00fb0d714de5222a3838f1c7c5ff87023d59da8"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-x64.tar.gz"
      sha256 "68a2473a8a64aa1b0fbbaa2a51a32c918b89d5d1fbc0876cc7dcb9db3124296f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-arm64.tar.gz"
      sha256 "0abf0fad105f6b8d978ee3eb1532d483c04ebaf50934e0e53b2dc078b728b79b"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-x64.tar.gz"
      sha256 "04ea84f154732846e170c9a95e2722c505fdd7abf939dc58b438c09ccbcbf73b"
    end
  end

  def install
    bin.install "risuko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/risuko --version")
  end
end
