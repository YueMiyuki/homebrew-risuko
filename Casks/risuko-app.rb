cask "risuko-app" do
  version "0.4.2"

  on_arm do
    sha256 "392c6f46b6ae0268db99ea23cc51aa02e1d2e066325370f211aa47e1673bc210"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_aarch64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "4212e77daa27bed04eb7f1569242fb1fab3a94c1554f6547e895d6ef5cdc128e"

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
