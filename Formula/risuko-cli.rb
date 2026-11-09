class RisukoCli < Formula
  desc "Risuko command-line interface — full-featured download manager"
  homepage "https://risuko.vercel.app"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-arm64.tar.gz"
      sha256 "98506d189111a785dbdf05c3aa99fddf8cf0b155989dceafa8124a16a2bd135b"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-x64.tar.gz"
      sha256 "49041c2846e790fe2c7d5569f53c130b6c9c4323b2a7b3ce4c8ae54229a1b20a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-arm64.tar.gz"
      sha256 "9afe0a23d980b0cf74a5bdf44b606348e0a689aaed79b2fa942c41a8a4ad6043"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-x64.tar.gz"
      sha256 "971e90a042c8b5bfa61b0a9c244b6e66edcf1f6d3f33b4025c6d2ec454b1c9a2"
    end
  end

  def install
    bin.install "risuko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/risuko --version")
  end
end
