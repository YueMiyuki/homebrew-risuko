cask "risuko-app" do
  version "0.7.0"

  on_arm do
    sha256 "a7c51307f7c341a4d327d757d87e06bd0b1ca18394d5c1c102a76c612b4af598"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_darwin_arm64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "0c9d1159982c248203a5828953a48deec740fa934d5f840543195792ab9a2c3b"

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
