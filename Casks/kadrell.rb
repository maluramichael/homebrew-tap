cask "kadrell" do
  version "1.68.0"
  sha256 "32125370c0417ca9d0470bcdd0d849da22ce7e83cb75d9b991087c21e384699a"

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
