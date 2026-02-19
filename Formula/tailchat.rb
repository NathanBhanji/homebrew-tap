class Tailchat < Formula
  desc "End-to-end encrypted terminal chat over Tailscale"
  homepage "https://github.com/NathanBhanji/tail-chat"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.6/tailchat_darwin_amd64.tar.gz"
      sha256 "e56f42007de33e032f979fecce9714e3f23c2c7b8209ca83a844fb9a15eece54"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.6/tailchat_darwin_arm64.tar.gz"
      sha256 "07f0406c44ebb2f323467932f415a2571de3e3888c027a23fc3a988ba067d85d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.6/tailchat_linux_amd64.tar.gz"
      sha256 "ddb71004b06200a52f1ebcf70f169c236ef076e863eda6fed7a4540ca39c8e66"
    end

    on_arm do
      url "https://github.com/NathanBhanji/tail-chat/releases/download/v0.1.6/tailchat_linux_arm64.tar.gz"
      sha256 "f457da3e4d134639f7c161b3a68f95a2a6b7d357d29cb8a1527de8c401ced7b9"
    end
  end

  def install
    bin.install "tailchat"
  end

  test do
    system "#{bin}/tailchat", "--version"
  end
end
