class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.22"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.22/dns-manager-v1.0.22-darwin-arm64.tar.gz"
      sha256 "2edd0f5d79e5e14638d5c2878a9bb631c906368f0e842d84cc5b88d8d0b55dff"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.22/dns-manager-v1.0.22-darwin-amd64.tar.gz"
      sha256 "afa851276b6fa70ead524b3613646b57a56803ab4e4dd1117145637424eb6155"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.22/dns-manager-v1.0.22-linux-amd64.tar.gz"
        sha256 "2772099c75d96c25e5ec82948ad516169b2b30f4f70be0d2cd6eb0124c2794a1"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.22/dns-manager-v1.0.22-linux-386.tar.gz"
        sha256 "961c758c17c6fd91cf05fe8adbec9094e884bbe853d30eab49270d6be5bbdd78"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.22/dns-manager-v1.0.22-linux-arm64.tar.gz"
        sha256 "03c65e17d8d49b41e2251ef2834ccd6c182c3bef81d9a32b0702b98debb01721"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.22/dns-manager-v1.0.22-linux-arm.tar.gz"
        sha256 "f4ae0b8bfef3bcac84e33882d3b5707694c4920def6862df2871fcffb236a7e2"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.22-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.22-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.22-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.22-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.22-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.22-linux-arm" => "dns-manager"
      end
    end
  end
end
end
