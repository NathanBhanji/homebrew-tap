class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.2.0/tailchat_darwin_amd64.tar.gz"
      sha256 "0612b61e71af86fdcdf06268818ed6a3ae608e5881e3233c440ae7cab8600984"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.2.0/tailchat_darwin_arm64.tar.gz"
      sha256 "43876f5c44dbcc3b58978f8393a7bf39bf9d2794c7cc6109067ff3b4a2d2bfa7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.2.0/tailchat_linux_amd64.tar.gz"
      sha256 "122d546f97802456f08df5bed5b4891ca751d31aa7d8664d2627fda37b9b9c47"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.2.0/tailchat_linux_arm64.tar.gz"
      sha256 "9876c610c512342a7ff34bc6227c37c2a5f13bf834e7013885c2a38d1730c1d2"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
