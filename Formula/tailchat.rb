class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.4/tailchat_darwin_amd64.tar.gz"
      sha256 "612c4af4daa0824df87259f0ea8d59304fd260e27131423eb52d0151eae084a0"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.4/tailchat_darwin_arm64.tar.gz"
      sha256 "5df59f92fc27a5945ec42b7f45dec181a7f66103fcc34364eabaa04d91a32f4a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.4/tailchat_linux_amd64.tar.gz"
      sha256 "bf44d3b0459a22b470bfcaabdb66d4e2533f008e1e11edc2337a4f7ccfa030ec"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.4/tailchat_linux_arm64.tar.gz"
      sha256 "be67f8b3141b7580521ae6efdf030afd8e404d10feef70c85941b0d6a54c2865"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
