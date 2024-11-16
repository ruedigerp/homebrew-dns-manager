class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.18"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.18/dns-manager-v1.0.18-darwin-arm64.tar.gz"
      sha256 "5075ed69082cd1c8eaf92bd1ee7167314ba5f7993b27ced5a4ec6f64d1a4b511"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.18/dns-manager-v1.0.18-darwin-amd64.tar.gz"
      sha256 "a5c16077de21aa34dec225713ed126a6a79634c63bf94e0510fa8123cc5352eb"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.18/dns-manager-v1.0.18-linux-amd64.tar.gz"
        sha256 "d35cfe1a8d94858787dddc53e5f53f79ff8740b0f4fda7f8fbaae743f7c9c39b"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.18/dns-manager-v1.0.18-linux-386.tar.gz"
        sha256 "80329a9ca2207293f5ad2fec24d510394d3a8b3101a8efb7aea91ff183c37a73"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.18/dns-manager-v1.0.18-linux-arm64.tar.gz"
        sha256 "fd7919ef23a3f1ac81f2f56162f54728c4325d69b0a127ff0124bd98392564a0"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.18/dns-manager-v1.0.18-linux-arm.tar.gz"
        sha256 "442799f3534d18b7c54f54da701f4a374b65fecda0dad042e807eae4615cc519"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.18-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.18-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.18-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.18-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.18-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.18-linux-arm" => "dns-manager"
      end
    end
  end
end
end
