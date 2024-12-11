class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.26"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.26/dns-manager-v1.0.26-darwin-arm64.tar.gz"
      sha256 "204937186d24157c1ee9ddb41a3e69f661b5301b99424fa1f6a6c9c5c16c6434"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.26/dns-manager-v1.0.26-darwin-amd64.tar.gz"
      sha256 "49b6cb5c868c6c7fc6fcf6e540fb553884b6ba669bcec0ee82d721bc06e220ee"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.26/dns-manager-v1.0.26-linux-amd64.tar.gz"
        sha256 "da6ae5ecef581bb235d74c1f799f9d10a26baea73e9359db8c1a9c5732af01ea"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.26/dns-manager-v1.0.26-linux-386.tar.gz"
        sha256 "a054b4ca9099e23870a0fa361344dda7c4c371161bc6f0531540ffdd78397748"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.26/dns-manager-v1.0.26-linux-arm64.tar.gz"
        sha256 "4fb517a215d99de728f71c84d7b549547f727caca09b64f034ed2da155814113"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.26/dns-manager-v1.0.26-linux-arm.tar.gz"
        sha256 "7e80d2969f23c91c0774af5715a8cb3d633a12d41463723e2a427640727dfc8f"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.26-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.26-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.26-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.26-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.26-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.26-linux-arm" => "dns-manager"
      end
    end
  end
end
end
