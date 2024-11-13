class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.16"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.16/dns-manager-v1.0.16-darwin-arm64.tar.gz"
      sha256 "3719754e6c219d7868db5a187e45c993b98ea5c784514eae955d3771822f3c38"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.16/dns-manager-v1.0.16-darwin-amd64.tar.gz"
      sha256 "785fb8316f4d354695b144b99e79be65e4494eb8918c6a56b24deffd472c8358"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.16/dns-manager-v1.0.16-linux-amd64.tar.gz"
        sha256 "6a4ba1cea87102e24db5e860dbc08a2f78d0cf1e3d927937868bfa055ae770a0"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.16/dns-manager-v1.0.16-linux-386.tar.gz"
        sha256 "d1f905e545e914134979d3083369e0d3e20d102a300d281f35ef423e5be98918"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.16/dns-manager-v1.0.16-linux-arm64.tar.gz"
        sha256 "7538412bb17866055c78628d28f8d2a7b9cffe8a7f93f2642e0453791b41f8b2"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.16/dns-manager-v1.0.16-linux-arm.tar.gz"
        sha256 "1afe3bfee04c6bd540de8f83a8e324c5ecec8915dcb1bc6fe443a5a5f8d0b88b"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.16-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.16-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.16-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.16-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.16-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.16-linux-arm" => "dns-manager"
      end
    end
  end
end
end
