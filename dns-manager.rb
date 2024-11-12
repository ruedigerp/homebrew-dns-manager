class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.13"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.13/dns-manager-v1.0.13-darwin-arm64.tar.gz"
      sha256 "3e9dfd4da8a6ad1f6d2f0e25ecb493101c765f92660e14deda0c1c3b7afb01ea"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.13/dns-manager-v1.0.13-darwin-amd64.tar.gz"
      sha256 "619a4083401d5902a2f647e5e91ac9723dba756128762e39ae8c5c90690d2de7"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.13/dns-manager-v1.0.13-linux-amd64.tar.gz"
        sha256 "941462929773276ff17fdbc33b880299649fb2e89eef08641afd4e7b8ae686b7"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.13/dns-manager-v1.0.13-linux-386.tar.gz"
        sha256 "38196f83e7070fcbe28943f5bf17e835203b08d6982b3139d6983bb52d848f16"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.13/dns-manager-v1.0.13-linux-arm64.tar.gz"
        sha256 "a1007c8392ccb0873f02f6a3e0c265ea7dab8c18353c874823939506bbb815fe"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.13/dns-manager-v1.0.13-linux-arm.tar.gz"
        sha256 "793e379162cc5b8ec9efe489c3707acb834d73b8b1a92473d290921dd79cfa65"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.13-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.13-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.13-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.13-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.13-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.13-linux-arm" => "dns-manager"
      end
    end
  end
end
end
