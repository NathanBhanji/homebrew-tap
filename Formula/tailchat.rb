class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.1/tailchat_darwin_amd64.tar.gz"
      sha256 "ca690bf3c1036c1d9b9998e46db39bcf9fb303d08c7966488f0e3bc431bc3c44"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.1/tailchat_darwin_arm64.tar.gz"
      sha256 "26b4e6741a3de37f38f36c67e9919e9d6e5cdc8c616523d82e3661f8b6cd7360"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.1/tailchat_linux_amd64.tar.gz"
      sha256 "c9b975d47327b6dd7cd762d4dda8c70e745b6f7182f858e0e225373c5c932f09"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.1/tailchat_linux_arm64.tar.gz"
      sha256 "962ee94fa731cb6801f131cf4d4f35dd23fd6fa65136b5e6e87923d1ed083bab"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
