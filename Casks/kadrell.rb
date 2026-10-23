cask "kadrell" do
  version "1.72.0"
  sha256 "36829ffbb521c98c0fc8315f6c2b1cf7aa73086fcb4b4351423075d6ad0c187d"

  url "https://kadrell.malura.de/download/Kadrell-#{version}.dmg"
  name "Kadrell"
  desc "Keep all parallel Claude Code sessions visible in one window"
  homepage "https://kadrell.malura.de/"

  livecheck do
    url "https://kadrell.malura.de/download/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Kadrell.app"

  zap trash: [
    "~/Library/Application Support/de.malura.kadrell",
    "~/Library/Caches/de.malura.kadrell",
    "~/Library/HTTPStorages/de.malura.kadrell",
    "~/Library/Preferences/de.malura.kadrell.plist",
    "~/Library/Preferences/de.malura.kadrell.profile.*.plist",
    "~/Library/Saved Application State/de.malura.kadrell.savedState",
  ]
end
