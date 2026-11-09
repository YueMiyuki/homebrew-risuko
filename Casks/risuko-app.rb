cask "risuko-app" do
  version "1.2.0"

  on_arm do
    sha256 "b0dc8bd45ddbf1965c7166007415dea8d36156600a88574057ff4145f3ea72c4"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_darwin_arm64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "a2690786775472436745ac0e3d0f3b4314859d2fac658f9a505f8a76daaa494a"

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
