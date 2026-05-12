cask "risuko-app" do
  version "0.3.0"

  on_arm do
    sha256 "94a41dfdeb1abf50a2ffde6b9bfdcd6a218fcc28e7597c34cd4c0a3df3ca59ff"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_aarch64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "a418a982caa74963c18bd23285bde91b67f7afa499c682c4341e9c70d3940e9f"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_x64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end

  name "Risuko"
  desc "Full-featured download manager"
  homepage "https://risuko.vercel.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Risuko.app"

  zap trash: [
    "~/Library/Application Support/app.risuko.native",
    "~/Library/Caches/app.risuko.native",
    "~/Library/Logs/Risuko",
    "~/Library/Preferences/app.risuko.native.plist",
    "~/Library/Saved Application State/app.risuko.native.savedState",
  ]
end
