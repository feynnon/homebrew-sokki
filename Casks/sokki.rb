cask "sokki" do
  version "0.2.18"
  sha256 "c79d743767154199a9eaf3075869dd28396d5b11117b3cd6943fa76c7a75d938"

  url "https://github.com/feynnon/sokki/releases/download/v#{version}/Sokki-#{version}-arm64.zip"
  name "Sokki"
  desc "Local dictation and meeting notes"
  homepage "https://sokki.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sokki.app"

  zap trash: [
    "~/Library/Application Support/org.sokki.app",
    "~/Library/Caches/org.sokki.app",
    "~/Library/Logs/org.sokki.app",
    "~/Library/Preferences/org.sokki.app.plist",
    "~/Library/Saved Application State/org.sokki.app.savedState",
    "~/Library/WebKit/org.sokki.app",
  ]
end
