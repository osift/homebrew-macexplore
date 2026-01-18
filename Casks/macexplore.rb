cask "macexplore" do
  version "1.1.0"
  sha256 "66a39d084be4474ee9161ea812312acbf5692af412c67aa96e12cdc63dfad09e"

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
