class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.21"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.21/dns-manager-v1.0.21-darwin-arm64.tar.gz"
      sha256 "f6d79f6dcbdd82ab01660effdd8985c82510411762de1466f5f4a1e82c7cba50"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.21/dns-manager-v1.0.21-darwin-amd64.tar.gz"
      sha256 "3e6e3d5a4a585afbde571f10847568df42ed67e2bb1441e0017b38e16491b9a6"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.21/dns-manager-v1.0.21-linux-amd64.tar.gz"
        sha256 "d95a4bcf912fe586e01dbb4bf24185ba9df752f8ff375e5b7b20edb785a1eb85"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.21/dns-manager-v1.0.21-linux-386.tar.gz"
        sha256 "3ba7cf09c874e6164084cdd281c81af9ab9284a40b915590cb5fd878b04f3e2f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.21/dns-manager-v1.0.21-linux-arm64.tar.gz"
        sha256 "95fc3a58e768746bb31dee2e519f87304721b0135c3cc9b26fc14beededd404a"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.21/dns-manager-v1.0.21-linux-arm.tar.gz"
        sha256 "6dfb03607b784f880906ead624db6fc320a1fde4d5114a0c7b2001484a848f6e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.21-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.21-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.21-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.21-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.21-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.21-linux-arm" => "dns-manager"
      end
    end
  end
end
end
