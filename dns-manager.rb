class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.30"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.30/dns-manager-v1.0.30-darwin-arm64.tar.gz"
      sha256 "ec833ee4126a6f0f7d53982568e06a4b6a97a25ec962d028f8166a25ea089ea6"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.30/dns-manager-v1.0.30-darwin-amd64.tar.gz"
      sha256 "54a7fb75a2344e49804903f714e073ab9917ebacbb1a850d32be41348cb1462d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.30/dns-manager-v1.0.30-linux-amd64.tar.gz"
        sha256 "13ab11136153efaf164ad7b9c73578b1d1f0b8ac0fedab63c1a96fb08565cf8f"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.30/dns-manager-v1.0.30-linux-386.tar.gz"
        sha256 "97ea1cbe98b0efcab5163d2d740e945293e38714608fa006394266a32398b46f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.30/dns-manager-v1.0.30-linux-arm64.tar.gz"
        sha256 "314460d926540e13565e9f44a4db224a2a9f8a4f167f9d8e7932774e03ebb94d"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.30/dns-manager-v1.0.30-linux-arm.tar.gz"
        sha256 "9a102d41aef8f3c37df1672dbb62952fc1cf6f9dc2128baa97d94c9692f34183"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.30-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.30-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.30-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.30-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.30-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.30-linux-arm" => "dns-manager"
      end
    end
  end
end
end
