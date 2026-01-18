cask "macexplore" do
  version "1.10"
  sha256 "36c1f59de809d7f870109a4d2db0698c52e0f81d79b33e85c326ba10a584ad00"

  url "https://github.com/osift/macexplore/releases/download/v#{version}/MacExplore-#{version}.dmg"
  name "MacExplore"
  desc "Modern file explorer for macOS"
  homepage "https://macexplore.com"

  app "MacExplore.app"
end
