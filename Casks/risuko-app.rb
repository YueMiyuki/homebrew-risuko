cask "risuko-app" do
  version "1.1.0"

  on_arm do
    sha256 "e23a6ecc66ea9d21718697b4bb043902f2693384593a591f8131dabc7abdc8b0"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_darwin_arm64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "78583994a1053bdd90f23257cb4f824274ba14afc99975cbdfbfcac378c0cf5b"

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
