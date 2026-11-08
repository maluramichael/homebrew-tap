cask "kadrell" do
  version "1.85.2"
  sha256 "0ca971378ea13ebd8c4e4ad35d2ddd4d14f7e380e508b5d92a35818e6bc91530"

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
