class Dnsmanager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.11"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.11/dns-manager-v1.0.11-darwin-arm64.tar.gz"
      sha256 "fa0dad0a48ce103ff0190a552ed5ef38ab44b7da7724a1fa8b5a5b72a6fdceb1"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.11/dns-manager-v1.0.11-darwin-amd64.tar.gz"
      sha256 "c0955e239f1352fb20460df49a955e862b5c0bb06aa6a2ed1c1da4643fdd6fd3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.11/dns-manager-v1.0.11-linux-amd64.tar.gz"
        sha256 "0e68c044662ff31ee703eca3b6a4b506bc1cc0c8e26512c739349f98e9ea9daa"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.11/dns-manager-v1.0.11-linux-386.tar.gz"
        sha256 "f70068fc2033ab24ab4155838d95350a0a011a462c1badc0e8c10dbbb86e7ebf"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.11/dns-manager-v1.0.11-linux-arm64.tar.gz"
        sha256 "d1f3d4dbc33938ba7f29d56ecbe0657106d9f375dc86e705ff7bf67d8b9bd186"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.11/dns-manager-v1.0.11-linux-arm.tar.gz"
        sha256 "dd8d33432f181f054d246317893c02c3a30b8240b392fe08e399343de983dec8"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.11-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.11-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.11-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.11-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.11-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.11-linux-arm" => "dns-manager"
      end
    end
  end
end
end
