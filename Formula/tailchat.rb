class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  url "https://github.com/NathanBhanji/tail-chat/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "553a0f791cc94a0a65ab12b9c136f0859a6da4a0ca1d9c877c4b26dc66630e3c"
  license "MIT"
  version "0.4.0"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
      -X main.commit=#{tap.user}
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
