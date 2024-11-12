class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.12"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.12/dns-manager-v1.0.12-darwin-arm64.tar.gz"
      sha256 "60769bd60fa39b2e7d4678ba5a89921e635df51d2c5a5a41d2ccdc49ad6deb1c"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.12/dns-manager-v1.0.12-darwin-amd64.tar.gz"
      sha256 "f30aa6cbdab0adb8c5dc426fb99c49d89d0119bd1031052f7de58af5aa0e162d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.12/dns-manager-v1.0.12-linux-amd64.tar.gz"
        sha256 "5f94f260da706ada63f4d4ce0cc762c83e233cda0815a27ec9e093e9ea636b89"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.12/dns-manager-v1.0.12-linux-386.tar.gz"
        sha256 "f6e53fc1a1263cb731bac5493fc82c9e63145fe665c2362e90952af0d89d82df"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.12/dns-manager-v1.0.12-linux-arm64.tar.gz"
        sha256 "092270d65343fdac17c22292354153b8d63d866d9e29f3bbbdea00282b69287d"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.12/dns-manager-v1.0.12-linux-arm.tar.gz"
        sha256 "c69f0b6b0707cd72ff5785495ff9a3002df081eb158ca0a12cad71560be16f15"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.12-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.12-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.12-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.12-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.12-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.12-linux-arm" => "dns-manager"
      end
    end
  end
end
end
