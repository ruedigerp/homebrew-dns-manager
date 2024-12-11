class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.24"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.24/dns-manager-v1.0.24-darwin-arm64.tar.gz"
      sha256 "b8daeaaec29c06191f78b3d5c791c5fe96da4d7978e799b7846835ead992e628"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.24/dns-manager-v1.0.24-darwin-amd64.tar.gz"
      sha256 "11ae3944684cce1f9335d3bcbe3695a9dd99d666741b6b44a0ac1a64e5441796"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.24/dns-manager-v1.0.24-linux-amd64.tar.gz"
        sha256 "bfd5e1e3f0b5e672ca77361739e5094fa750f86d857380714d54489a53736a99"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.24/dns-manager-v1.0.24-linux-386.tar.gz"
        sha256 "0b0b4dbd662de69d0b0e4b625f8075fbca14711a7cd6a1d19df20c8910f7e30a"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.24/dns-manager-v1.0.24-linux-arm64.tar.gz"
        sha256 "845e97e729dd639e6475cc94fd8fab92d2f83aa1001fb259ce387b90fa1e7c88"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.24/dns-manager-v1.0.24-linux-arm.tar.gz"
        sha256 "e8ba2c5bdf02eb3892cd4dfd6d33bea1524a13a23ed72901945459b0e4b97191"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.24-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.24-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.24-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.24-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.24-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.24-linux-arm" => "dns-manager"
      end
    end
  end
end
end
