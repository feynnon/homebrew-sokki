cask "sokki" do
  version "0.2.40"
  sha256 "ca537ff148d48169b1e83698eab7a79a3f5c76588d27f66302fe474049e98f2d"

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
