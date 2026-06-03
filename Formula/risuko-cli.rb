class RisukoCli < Formula
  desc "Risuko command-line interface — full-featured download manager"
  homepage "https://risuko.vercel.app"
  version "0.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-arm64.tar.gz"
      sha256 "ac84ac63ab8002e81b12c4e534e28390de976e6f5e4bdcebef93aeda7367d0ed"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-darwin-x64.tar.gz"
      sha256 "af803a8d9bd82edac9cb32d0dcd7af142786a8d2a57eca8fcdbd1e72ccbc3ceb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-arm64.tar.gz"
      sha256 "effe357db3280eb9beb806ca420a3851bdb7b144bab7bb911bca0915c6f5b342"
    end
    on_intel do
      url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/risuko-cli-linux-x64.tar.gz"
      sha256 "8002769bd4ad58dc715771387bf3aee53e5cec2b0a742433b26c8113e0dbbf7d"
    end
  end

  def install
    bin.install "risuko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/risuko --version")
  end
end
