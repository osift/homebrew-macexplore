cask "macexplore" do
  version "1.11"
  sha256 "153a02e1961950a0b2ff79c02b20a8c17e728a735f339f6698e919e7fb86b469"

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
