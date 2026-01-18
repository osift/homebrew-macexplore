cask "macexplore" do
  version "1.11"
  sha256 "1d16551a3ea9a9fad8db5428c23976841e4ccb7091de4b951426d0a9c95bd0bd"

  url "https://github.com/osift/macexplore/releases/download/v#{version}/MacExplore-#{version}.dmg",
      verified: "github.com/osift/macexplore/"
  name "MacExplore"
  desc "Modern file explorer"
  homepage "https://macexplore.com/"

  app "MacExplore.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/MacExplore.app"]
  end
end
