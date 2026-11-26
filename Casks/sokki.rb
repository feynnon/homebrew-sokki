cask "sokki" do
  version "0.2.14"
  sha256 "4ca850e26eb83c4d47f6bce8c5b8ec64c93af73068a82baeac9506e64390a659"

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
