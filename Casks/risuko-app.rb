cask "risuko-app" do
  version "1.0.2"

  on_arm do
    sha256 "3585eb63c49b8393ee56d72fb85f928a65ed8b5f80c673fbd819ba25e72acda7"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_darwin_arm64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "1e1a3a6acb4b1490b1a35558ade3861b03e3b0faf08e5b9aad97414d3f432619"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_darwin_x64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end

  name "Risuko"
  desc "Full-featured download manager"
  homepage "https://risuko.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "Risuko.app"

  zap trash: [
    "~/Library/Application Support/app.risuko.native",
    "~/Library/Caches/app.risuko.native",
    "~/Library/Logs/Risuko",
    "~/Library/Preferences/app.risuko.native.plist",
    "~/Library/Saved Application State/app.risuko.native.savedState",
  ]
end
