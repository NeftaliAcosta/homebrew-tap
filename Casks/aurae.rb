cask "aurae" do
  version "0.2.0"
  sha256 :no_check

  url "https://github.com/NeftaliAcosta/Aurea/releases/download/v#{version}/Aurae.app.zip"
  name "Aurae"
  desc "Intelligent, 100% local, native voice dictation suite for macOS"
  homepage "https://github.com/NeftaliAcosta/Aurea"

  depends_on macos: ">= :ventura"
  depends_on formula: "whisper-cpp"
  depends_on formula: "sox"

  app "Aurae.app"
  binary "aurae"

  zap trash: [
    "~/.config/aurae",
    "~/Library/Application Support/Aurae",
    "~/Library/Preferences/com.aurae.menubar.plist",
  ]
end
