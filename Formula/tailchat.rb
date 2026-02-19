class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.0/tailchat_darwin_amd64.tar.gz"
      sha256 "0320bbb6e674ea5e46ba057316a147d061fc59b8f92d077e4b84d91517bf5c68"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.0/tailchat_darwin_arm64.tar.gz"
      sha256 "0908460d8f324c12d3832a63f1fe7608b534352a1b293c5a32f30461ffa4ea8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.0/tailchat_linux_amd64.tar.gz"
      sha256 "434d3e1367f5759a9999f0fcfeb06bc5acb1db5cd8634fc08df026b524ad9f11"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.0/tailchat_linux_arm64.tar.gz"
      sha256 "d37deda6152c1f4dc6c4b6f6be32693cf17d0bcff9dd4e65c91d22d378cf0295"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
