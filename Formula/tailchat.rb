class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.3.0/tailchat_darwin_amd64.tar.gz"
      sha256 "b48b72a591b62fac0b8dfdb9a6e15c8d4d3066d0e3e805d9ab21e7ca2deccf34"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.3.0/tailchat_darwin_arm64.tar.gz"
      sha256 "b072b9c02d28193ccc9080a17dbcc2dad88501906117c354eb0ce51e9c48c2b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.3.0/tailchat_linux_amd64.tar.gz"
      sha256 "17ced46e7010f094a47a81170960cd3d231ba53633abb7996118b2fe26d54565"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.3.0/tailchat_linux_arm64.tar.gz"
      sha256 "8d14926f4085777babb59cca63b24bfc90a5c1801d75ccd9cc652bd596ca5771"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
