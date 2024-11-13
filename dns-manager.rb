class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.17"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.17/dns-manager-v1.0.17-darwin-arm64.tar.gz"
      sha256 "7c39ba8e3a71cf2a552e135c11be7a9316bf872a6c2d8c180fc2be5128b35ede"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.17/dns-manager-v1.0.17-darwin-amd64.tar.gz"
      sha256 "bd1e19c8a40932dfe7ebb7b604216cca82e36fff02da83fc9e34a7a1eb19eccd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.17/dns-manager-v1.0.17-linux-amd64.tar.gz"
        sha256 "228c354dc31e09334d08111cda8c27fc0050d54ecfb2078aa29ad4b53e0519fc"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.17/dns-manager-v1.0.17-linux-386.tar.gz"
        sha256 "850be312f1f3bafe2378095831edf3fec7e4c7d13cd039f5bc2af7ba0b40b17e"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.17/dns-manager-v1.0.17-linux-arm64.tar.gz"
        sha256 "465d76c2f397a0825f776a4e1c527f2edb185fc8b25c0081525aeaee869570d2"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.17/dns-manager-v1.0.17-linux-arm.tar.gz"
        sha256 "d7a1cdadcb83bddb4c664b9de7b9dfd8c940905ff087675446d5936fcc11f217"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.17-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.17-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.17-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.17-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.17-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.17-linux-arm" => "dns-manager"
      end
    end
  end
end
end
