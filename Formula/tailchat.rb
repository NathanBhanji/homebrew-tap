class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.2/tailchat_darwin_amd64.tar.gz"
      sha256 "18f7778ce66a97da039d70b687c070c6fb4834234daea575509e792f3f29f881"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.2/tailchat_darwin_arm64.tar.gz"
      sha256 "0e26550f6233682fe087cf5a0bc7b9faee95359b871069dabd7cf6e03832c493"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.2/tailchat_linux_amd64.tar.gz"
      sha256 "054f1cce5301b56423c05d4f68d5820035c5d959260b3ba87481ab244b716798"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.2/tailchat_linux_arm64.tar.gz"
      sha256 "c8193c2ab8cceed5cc1f8ea04fa32cb6d6d244c5c7b258ec67a271f9c79e66b0"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
