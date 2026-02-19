class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.5/tailchat_darwin_amd64.tar.gz"
      sha256 "8dca4f941f81b03232f7229ade67cf3db3727dc9cb1ea87c19c996f67d63a002"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.5/tailchat_darwin_arm64.tar.gz"
      sha256 "eafc565fe3f611fb3e6ef692e2320a80e049c441ec6253c6c92967d22eee8fa9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.5/tailchat_linux_amd64.tar.gz"
      sha256 "9a8db56f25566e99e23897f652771fc72f96c4aaaaf044089cd296836462799b"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.5/tailchat_linux_arm64.tar.gz"
      sha256 "23cb62723b6f5853e56d1a10f28519b4ca2468e2eed69f9c45814ef3416e2f2d"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
