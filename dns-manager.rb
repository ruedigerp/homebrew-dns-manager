class DnsManager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.15"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.15/dns-manager-v1.0.15-darwin-arm64.tar.gz"
      sha256 "729f2f295c032009136d9160ac6f9474513df8249e0b7bfaa4417e3160eb23d2"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.15/dns-manager-v1.0.15-darwin-amd64.tar.gz"
      sha256 "6488f3e85a9687851396d8375233ccf267338df7d12d234d84f191f28c75973d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.15/dns-manager-v1.0.15-linux-amd64.tar.gz"
        sha256 "8861c8c6c8920337d6d46628a0b9b7c9b518bfc132f4e7c54cb7fba9c7bc06be"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.15/dns-manager-v1.0.15-linux-386.tar.gz"
        sha256 "2972fc2760be2ef0ba9635fdc000474440870246d1ac3d36d7675d39d2fa8609"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.15/dns-manager-v1.0.15-linux-arm64.tar.gz"
        sha256 "02fe84a227acc0dffd444b67eed9eb3db2e12f58bd815d2d2ed0f462fd3e186c"
      else
        url "https://github.com/ruedigerp/homebrew-dns-manager/releases/download/v1.0.15/dns-manager-v1.0.15-linux-arm.tar.gz"
        sha256 "1c61cc793876ad361bfc6d10304ce6429149792f4cfbc87109e6574025006bff"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.15-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.15-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.15-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.15-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.15-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.15-linux-arm" => "dns-manager"
      end
    end
  end
end
end
