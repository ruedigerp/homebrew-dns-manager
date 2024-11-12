class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.14"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.14/dns-manager-v1.0.14-darwin-arm64.tar.gz"
      sha256 "7f61329a6b2bc84a5ec06f9148a25b816e66e85cf7b1c9c86a18197bae99b887"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.14/dns-manager-v1.0.14-darwin-amd64.tar.gz"
      sha256 "e5126dc1c2822a9031afff1eaa556f729559cf4e7488f47850e7105122155bbd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.14/dns-manager-v1.0.14-linux-amd64.tar.gz"
        sha256 "a2d4076ba0621ffa8513ae2cb3224fccf1ec8d16dc909b943b1a656e2caf33cd"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.14/dns-manager-v1.0.14-linux-386.tar.gz"
        sha256 "e2fdcb7f0d29af3da7dfcb4fba09dd6880d8ae408401fd7b72e6f5df6666f233"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.14/dns-manager-v1.0.14-linux-arm64.tar.gz"
        sha256 "0a674b3294cc3091ad1e3df3dfeded5c4d3a7db56c77ae0674bdabc5818077a4"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.14/dns-manager-v1.0.14-linux-arm.tar.gz"
        sha256 "a162ff06b6609665ed2e38abb0577ffa8561a6c57d12b97cc3835b0a0f26803e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.14-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.14-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.14-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.14-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.14-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.14-linux-arm" => "dns-manager"
      end
    end
  end
end
end
