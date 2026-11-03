cask "kadrell" do
  version "1.78.0"
  sha256 "17d2446b019ca1f6b00b3685354b7ec5be078d504c36f012ed935885e95331c9"

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
