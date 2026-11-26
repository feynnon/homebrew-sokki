cask "sokki" do
  version "0.2.17"
  sha256 "44eabae82b98fb4e98d7f76cf9dcc8d318daabbece8bf1ff02058f99adfaf4d3"

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
