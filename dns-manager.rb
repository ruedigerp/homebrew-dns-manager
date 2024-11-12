class Dnsmanager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.7"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.7/dns-manager-v1.0.7-darwin-arm64.tar.gz"
      sha256 "456cf576e5797b8c48ec064cebb855a37fd1aa9027612d74e5f49c960ec12bf6"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.7/dns-manager-v1.0.7-darwin-amd64.tar.gz"
      sha256 "c7fddd95f5516cf954a4f5e86ae05608281c823aa134a862f8fef474b46a34da"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.7/dns-manager-v1.0.7-linux-amd64.tar.gz"
        sha256 "b157782dd43c69322161bee3e453bd2f4d4e67102beb778207ec26205e139826"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.7/dns-manager-v1.0.7-linux-386.tar.gz"
        sha256 "7aa220d5cac4bc189debc9541bb5f2e70d586bdd51fe7860162434cb8b99445b"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.7/dns-manager-v1.0.7-linux-arm64.tar.gz"
        sha256 "cf75da6a4e8efd82633a3dc60bf59b595bd2240dc463b3f289c2e4ce113d4147"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.7/dns-manager-v1.0.7-linux-arm.tar.gz"
        sha256 "d3a0f90644dc55d9445f9e91ff5e802b286ae7c622c59fdd349c0bd3ee777290"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.7-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.7-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.7-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.7-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.7-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.7-linux-arm" => "dns-manager"
      end
    end
  end
end
end
