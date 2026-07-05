cask "risuko-app" do
  version "0.6.0"

  on_arm do
    sha256 "f68403dd57ac23472ee602b0dbbc4937e54391196352e6c155ba68e11b08a527"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_aarch64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "a86a21b39695b67e47c2be170e109e94ad0b0cc0f2e7dba4903fdf14c1fb691a"

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
