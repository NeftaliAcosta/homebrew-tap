cask "aurae" do
  version "0.2.0"
  sha256 "01bbc494114deaddefa6896b3db61eb0ee70a205e359eb2c9b4da5a44016188e"

  url "https://github.com/NeftaliAcosta/Aurea/releases/download/v#{version}/Aurae.app.zip"
  name "Aurae"
  desc "Intelligent, 100% local, native voice dictation suite for macOS"
  homepage "https://github.com/NeftaliAcosta/Aurea"

  depends_on macos: :ventura
  depends_on formula: "whisper.cpp"
  depends_on formula: "sox"

  app "Aurae.app"
  binary "aurae"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/Aurae.app"],
                   sudo: false
  end

  zap trash: [
    "~/.config/aurae",
    "~/Library/Application Support/Aurae",
    "~/Library/Preferences/com.aurae.menubar.plist",
  ]
end
