class RisukoCli < Formula
  desc "Risuko command-line interface — full-featured download manager"
  homepage "https://risuko.vercel.app"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-arm64.tar.gz"
      sha256 "47afeddf5fbded1c4d0d0c1170a9389c1dbdcb6e564ea69fe2a28cf97af5c8c3"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-x64.tar.gz"
      sha256 "f61d0a2f2fe05b76b2e8679e6053460c1c6ad7b9b8b9e95e6deeb86940d35952"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-arm64.tar.gz"
      sha256 "37f0366c0a5893270c5d31468d8d05e6af1b6b254a9ee3849e3c330fb85fb8e5"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-x64.tar.gz"
      sha256 "ba6102f4e38c1961aed5cb11eed96ac74e197a5b5e5bf374071d950f08bb0a7a"
    end
  end

  def install
    bin.install "risuko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/risuko --version")
  end
end
