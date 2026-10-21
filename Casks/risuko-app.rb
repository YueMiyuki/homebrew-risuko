cask "risuko-app" do
  version "1.0.3"

  on_arm do
    sha256 "e6c9149a47add91579104a772926ba40b5b0c531197e21c0051e8720e4c9d8fc"

    url "https://github.com/yuemiyuki/risuko/releases/download/v#{version}/Risuko_#{version}_darwin_arm64.dmg",
        verified: "github.com/yuemiyuki/risuko/"
  end
  on_intel do
    sha256 "abac4f0fb86b53eb916a006e0169edc4e5a472c8b05d374e544c5bf4a9c7e317"

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
