class Dns-manager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.6"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.6/dns-manager-v1.0.6-darwin-arm64.tar.gz"
      sha256 "ab0befdace2b23998de3193ec826335d01025a58533473a1dd087e34d3bfbb38"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.6/dns-manager-v1.0.6-darwin-amd64.tar.gz"
      sha256 "5a6ba14f0dd4f7861eb7eeefe256da235b728abc945d615beb0b58c12573bb4e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.6/dns-manager-v1.0.6-linux-amd64.tar.gz"
        sha256 "2566381e55ba347ffbb00e0836d283ff02404331bf3131ac24070d126a84fa1a"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.6/dns-manager-v1.0.6-linux-386.tar.gz"
        sha256 "973edc6cd9e6a861ee7bb2e01bcf4e2a828d9b618e899d44a781fdb893c32ee9"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.6/dns-manager-v1.0.6-linux-arm64.tar.gz"
        sha256 "71c818b013f0b0310b322d74997af2022d925668ca5be601845504713dfd616a"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.6/dns-manager-v1.0.6-linux-arm.tar.gz"
        sha256 "5c21558d4b81b1f36a4fc2cab34eb6abafe2c96cb275d21849fd07267d5e1079"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.6-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.6-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.6-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.6-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.6-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.6-linux-arm" => "dns-manager"
      end
    end
  end
end
end
