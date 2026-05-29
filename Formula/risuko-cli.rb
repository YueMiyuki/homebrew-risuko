class RisukoCli < Formula
  desc "Risuko command-line interface — full-featured download manager"
  homepage "https://risuko.vercel.app"
  version "0.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-arm64.tar.gz"
      sha256 "c578f06ac91d0112a9e7b2a1196b99cf44679964a69b69b8db14978a82e421d7"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-x64.tar.gz"
      sha256 "eba124d2e8c03e55b941f5ba05221d88f0217cf429ebf0af82fc90cc2bc3e97f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-arm64.tar.gz"
      sha256 "68d4639d70c80eadfcb4fc9d38d05ae32012d4e7f657a956228d77a90c5b0353"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-x64.tar.gz"
      sha256 "0fcbc1b3ce3c10ca4d519812868842a644113eab8bf12b3d8e9b5777b9708fea"
    end
  end

  def install
    bin.install "risuko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/risuko --version")
  end
end
