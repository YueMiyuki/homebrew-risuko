cask "risuko-app" do
  version "0.2.0"

  on_arm do
    sha256 "a4569476050038a3174457de79f5c5fd5f2cc8d063e5c20c21ad4a964445de1c"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_aarch64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "5265d32dd7bb4c095be1620f8abea08a31373f987fc46222b4435b22566dd4ee"

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
