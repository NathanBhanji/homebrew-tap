class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.3/tailchat_darwin_amd64.tar.gz"
      sha256 "da7046e25cb8162baedc4d0a23395344986fe36bb7394b70b37d24d95484864b"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.3/tailchat_darwin_arm64.tar.gz"
      sha256 "517a755993c1b0f84c9ba1829729fa12e1bd802b429f23940322362d9aeb74b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.3/tailchat_linux_amd64.tar.gz"
      sha256 "754a851134625d5b1afa41b2b0b0b5a06492f74ab6d100af5da137859a84fd0b"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.3/tailchat_linux_arm64.tar.gz"
      sha256 "f395a94397f71baf63adb79f254f41a0caf9670fcda3450bc19cab9c3095e708"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
