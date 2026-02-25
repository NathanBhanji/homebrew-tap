cask "traceroute" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/NathanBhanji/traceroute/releases/download/v#{version}/Traceroute-#{version}-macOS-universal.tar.gz"
  name "Traceroute"
  desc "A beautiful desktop traceroute app with live hop streaming and history"
  homepage "https://github.com/NathanBhanji/traceroute"

  app "Traceroute.app"

  zap trash: [
    "~/Library/Application Support/traceroute",
  ]
end
