cask "macexplore" do
  version "1.1.0"
  sha256 "4873200ed95c122860b4b0adbca6b43754d38e50331eddc961c19c3e66fbaa23"

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
