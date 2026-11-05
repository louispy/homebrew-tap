cask "livewall" do
  version "1.0"
  sha256 "3431f05b3e5b20e0c4aa1d2d6ed67a88c66e5b21ada7eaaf917284930dfac0c6"

  url "https://github.com/louispy/LiveWall/releases/download/v#{version}/LiveWall-#{version}.dmg"
  name "LiveWall"
  desc "Loop a video behind the desktop icons as a live wallpaper"
  homepage "https://github.com/louispy/LiveWall"

  depends_on macos: ">= :ventura"

  app "LiveWall.app"

  zap trash: "~/Library/Preferences/local.louis.livewall.plist"

  caveats do
    <<~EOS
      LiveWall is not notarized by Apple. If macOS refuses to open it,
      right-click LiveWall.app in /Applications and choose Open once, or install with:
        brew install --cask --no-quarantine louispy/tap/livewall
    EOS
  end
end
