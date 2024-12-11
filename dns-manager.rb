class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.28"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.28/dns-manager-v1.0.28-darwin-arm64.tar.gz"
      sha256 "a02f33deab21a3088152500e84efe4a425ec0cfcbfc1ae2d5f4499462752e7fe"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.28/dns-manager-v1.0.28-darwin-amd64.tar.gz"
      sha256 "f62cf6bdfa0f3bb6179971899d22c53cc73799345398bf15ca7799adc344a670"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.28/dns-manager-v1.0.28-linux-amd64.tar.gz"
        sha256 "d00180f4249bffa495c1e04ba2a350d93ed9fa2bb559588e51167d9a21cca6eb"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.28/dns-manager-v1.0.28-linux-386.tar.gz"
        sha256 "4f7a1940811ef3bf80ac5cfb2d2cd91e7471f4ef1d844b4ea69c77cb6e1368a1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.28/dns-manager-v1.0.28-linux-arm64.tar.gz"
        sha256 "618ac877c0fe772338ab4dd547c7d6b99cdd18a3c80985ff52f94a3c44972f0a"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.28/dns-manager-v1.0.28-linux-arm.tar.gz"
        sha256 "5e80978c6317017d5399dfef3dbbf0bcd0c02b4b1be5e715edd4c8dc874af864"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.28-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.28-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.28-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.28-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.28-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.28-linux-arm" => "dns-manager"
      end
    end
  end
end
end
