class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.31"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.31/dns-manager-v1.0.31-darwin-arm64.tar.gz"
      sha256 "6c7d860be49c6b5ed981b0e9854634f1b6cf6b6b0152b31a823a3494e69a64e5"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.31/dns-manager-v1.0.31-darwin-amd64.tar.gz"
      sha256 "1ff048b1c41d4de2e1d993654be779d26fd07322ca54cd0b2f25be425e933a50"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.31/dns-manager-v1.0.31-linux-amd64.tar.gz"
        sha256 "d6c590e159869593c1b7e4a3c42e0e1b7e2dfc8c78166aab9bdfafe53d6c5b8f"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.31/dns-manager-v1.0.31-linux-386.tar.gz"
        sha256 "2cf8d2f0c733c1e0cda827b94d9d54bc500465ed2569e8342040c6103b9cf72c"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.31/dns-manager-v1.0.31-linux-arm64.tar.gz"
        sha256 "a1fb44a356f567f437ea6224f2406d5678c2ab31605aaf69dd8467eba7125be3"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.31/dns-manager-v1.0.31-linux-arm.tar.gz"
        sha256 "da4cdbe20026b058329703fa3c784d76961318eed97bc1b176ced71cfd67dbb9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.31-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.31-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.31-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.31-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.31-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.31-linux-arm" => "dns-manager"
      end
    end
  end
end
end
