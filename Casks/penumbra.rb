cask "penumbra" do
  version "0.1.1"
  sha256 "841afea77cc3d9bf4866f0076f478e3d251c36b1ec7d2d88821e0b2e10091993"

  url "https://github.com/juanmacuevas/penumbra-mac/releases/download/v#{version}/Penumbra-#{version}.zip"
  name "Penumbra"
  desc "Finer brightness, color temperature and keyboard backlight from the brightness keys"
  homepage "https://github.com/juanmacuevas/penumbra-mac"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Penumbra.app"

  uninstall quit: "com.juanmacuevas.penumbra"

  caveats <<~EOS
    Penumbra is not signed by Apple. On first launch macOS will block it:
    open System Settings → Privacy & Security and click "Open Anyway".
    Then allow it in System Settings → Privacy & Security → Accessibility
    (needed to capture the brightness keys). After an upgrade, grant it again.
  EOS
end
