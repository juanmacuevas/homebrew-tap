cask "penumbra" do
  version "0.1.0"
  sha256 "128f5ee0abb83428cbd14a2ebeb62bf2e2d3a81c42b65025e84605c714dbe1f4"

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
