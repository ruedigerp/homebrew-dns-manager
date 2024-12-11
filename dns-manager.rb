class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.27"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.27/dns-manager-v1.0.27-darwin-arm64.tar.gz"
      sha256 "31b492e2fdbafe1def5ba0d49d27d33099e7fe5d12710e21421973072480ce65"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.27/dns-manager-v1.0.27-darwin-amd64.tar.gz"
      sha256 "48d87cdbefddf070bb15a3088f70106f55328097f511bab8a6d6d2bb431af2db"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.27/dns-manager-v1.0.27-linux-amd64.tar.gz"
        sha256 "684140fb61e58ad879f0b061859c56d89806c7544352bdc127a230a2a143543a"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.27/dns-manager-v1.0.27-linux-386.tar.gz"
        sha256 "6a7ef7f903f220f1246ac9b3fe8dd13c75912260e0105b8851759a47d61a2eb3"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.27/dns-manager-v1.0.27-linux-arm64.tar.gz"
        sha256 "5762adaed071619424cb2ce2a57cb4a627452e4eab41f2b0b17dd67d501b2580"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.27/dns-manager-v1.0.27-linux-arm.tar.gz"
        sha256 "883b7e4f25a0e221cb44d155a25737d0b07300897048a5f7ad73699fcdcc4d4a"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.27-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.27-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.27-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.27-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.27-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.27-linux-arm" => "dns-manager"
      end
    end
  end
end
end
