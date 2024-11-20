class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.19"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.19/dns-manager-v1.0.19-darwin-arm64.tar.gz"
      sha256 "22676f92e314c2da37fd475405ae7f8a00c58278582c79e022159ab0783a48c4"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.19/dns-manager-v1.0.19-darwin-amd64.tar.gz"
      sha256 "0e4e246b8a80328438f42115fef12049850a12bf07458ebf752187150e6529bc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.19/dns-manager-v1.0.19-linux-amd64.tar.gz"
        sha256 "8aca69b28797aa3e039f524b9e020be75ff1d1e41775b3c524834f968729bffb"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.19/dns-manager-v1.0.19-linux-386.tar.gz"
        sha256 "7f65e6aff199c360e0c49197659c68e6b2144980af8609d2b05da74b3f1cbca1"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.19/dns-manager-v1.0.19-linux-arm64.tar.gz"
        sha256 "38f43076e360bb5c2323d296fe69ce664b92879c477ce15e90bd33be187d0763"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.19/dns-manager-v1.0.19-linux-arm.tar.gz"
        sha256 "5cbae9ab4bfd0a8f9a6f6672cc40b673975b97d78683e4a47369dd5c60728be1"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.19-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.19-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.19-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.19-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.19-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.19-linux-arm" => "dns-manager"
      end
    end
  end
end
end
