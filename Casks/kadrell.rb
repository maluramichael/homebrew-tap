cask "kadrell" do
  version "1.79.0"
  sha256 "60ae3e052d3dc6ddd541f875d7dbab6f9d80527866c2c637f1a197a950e8f89a"

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
