cask "sokki" do
  version "0.2.22"
  sha256 "9155c774b001bea844c21fbca80daad0420102202d44ca3164740c659a04741b"

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
