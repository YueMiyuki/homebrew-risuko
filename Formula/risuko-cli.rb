class RisukoCli < Formula
  desc "Risuko command-line interface — full-featured download manager"
  homepage "https://risuko.vercel.app"
  version "1.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-arm64.tar.gz"
      sha256 "a5c9b7cbd1c91d65e058854c34ab4e0d5bcbbcaa6a5e2c9d4156ce66ca85e015"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-x64.tar.gz"
      sha256 "0b12da0d275a1b102dc2c2e8e2965ae9dd2c833d4d5be2bb944b8a612f081d04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-arm64.tar.gz"
      sha256 "a4601687c8a36161a68a300f2e988702f558cdcbde4c1371bfa9765a4b5d6104"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-x64.tar.gz"
      sha256 "01d7b46ef9e6084fb1a9ddf8c1583c9964d9e7990a32d1d3e9ded434a8e2c24a"
    end
  end

  def install
    bin.install "risuko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/risuko --version")
  end
end
