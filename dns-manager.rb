class Dnsmanager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.10"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.10/dns-manager-v1.0.10-darwin-arm64.tar.gz"
      sha256 "171611b1b485af291d4b5842929bd05de6d8edafb090c01e02410b68735979d3"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.10/dns-manager-v1.0.10-darwin-amd64.tar.gz"
      sha256 "08d56b5b14284d9095406c2cb35fa73d8f001c14e79543164ffc53120ff360f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.10/dns-manager-v1.0.10-linux-amd64.tar.gz"
        sha256 "b1949fff66df1b3b56a4417381e5bb74774f3de74f6578aa3defe24fe48c85ca"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.10/dns-manager-v1.0.10-linux-386.tar.gz"
        sha256 "b8989d929caa1a46cac479888845a5614b8c111cafbe00654063a4ee1554700f"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.10/dns-manager-v1.0.10-linux-arm64.tar.gz"
        sha256 "5bf034a33e71a9651b172419af6318208883f9d7bab473a81f48020d7c281f4b"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.10/dns-manager-v1.0.10-linux-arm.tar.gz"
        sha256 "de821e551249116e647418e985f5f2d1226d3e86d2e9fd1a81362b99f301e05c"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.10-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.10-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.10-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.10-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.10-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.10-linux-arm" => "dns-manager"
      end
    end
  end
end
end
