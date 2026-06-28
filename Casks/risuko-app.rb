cask "risuko-app" do
  version "0.5.0"

  on_arm do
    sha256 "e8bcfe671ade5b04935dfc188c3c358f147e8e2695dad40ac581af77593c09a2"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_aarch64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "d8a251f2fca54277aeb809c3d760654bbc85611e72da576184d52b57fbafc911"

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
