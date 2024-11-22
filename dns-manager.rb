class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.20"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.20/dns-manager-v1.0.20-darwin-arm64.tar.gz"
      sha256 "9ef3df7aaa49e1aae4e8e185f0eef74b3fa3fa4bcbf93cf6513b1cf825d29a38"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.20/dns-manager-v1.0.20-darwin-amd64.tar.gz"
      sha256 "94ec82e221f8753e516d89b6e0e687cc6c2b4f8eaa78683d79b0d7c161e918b8"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.20/dns-manager-v1.0.20-linux-amd64.tar.gz"
        sha256 "1ff95aeeb886c3b5157cc4be454c0955013caad1e2e2e579d88b21bdb58b17c8"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.20/dns-manager-v1.0.20-linux-386.tar.gz"
        sha256 "3376b492ded74b3dfae6082b1f17636901f12a6155a80fedb3420e3b45f1abe6"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.20/dns-manager-v1.0.20-linux-arm64.tar.gz"
        sha256 "e2bc33a86eefc418cf866a766fe2234c8f9bb79275d53eea7ff3b0c2db238145"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.20/dns-manager-v1.0.20-linux-arm.tar.gz"
        sha256 "2bfb78e3da063e1a34a231e7627c7b3fbe250be1a39d6dffd56e529818b721f3"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.20-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.20-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.20-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.20-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.20-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.20-linux-arm" => "dns-manager"
      end
    end
  end
end
end
