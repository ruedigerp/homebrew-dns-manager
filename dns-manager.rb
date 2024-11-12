class Dnsmanager < Formula
  desc "dns-manager!"
  homepage "https://www.kuepper.nrw"
  
  version "1.0.9"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.9/dns-manager-v1.0.9-darwin-arm64.tar.gz"
      sha256 "f25b17028b87faafb638ccfa7b8f545c6126c5a70e9c020ff0ddc5969de9840a"
    elsif Hardware::CPU.intel?
      url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.9/dns-manager-v1.0.9-darwin-amd64.tar.gz"
      sha256 "1d8f62b16d4d35fca4a841916a5ef74b0318b9671d8df5be24c892063baf1596"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.9/dns-manager-v1.0.9-linux-amd64.tar.gz"
        sha256 "d281724f0db5b2852f9ee9ab907f84ce2ec0d39d83db343c0dc163ec7197cb8e"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.9/dns-manager-v1.0.9-linux-386.tar.gz"
        sha256 "84fa9e545302b85688c293d47c89f66c0f75a5450d8aec978654739b0baa64cd"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.9/dns-manager-v1.0.9-linux-arm64.tar.gz"
        sha256 "428d0f3129e48a912bfa1876e37efc142f4a610cc9a275e2e9b962c3cccfee24"
      else
        url "https://github.com/ruedigerp/cloudflare-dns-manager-homebrew/releases/download/v1.0.9/dns-manager-v1.0.9-linux-arm.tar.gz"
        sha256 "eb0dd345b71ca63c2df559f3640f954a3d5b8dc80756c85c59eae482e823acb9"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "dns-manager-v1.0.9-darwin-arm64" => "dns-manager"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "dns-manager-v1.0.9-darwin-amd64" => "dns-manager"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "dns-manager-v1.0.9-linux-amd64" => "dns-manager"
      else
        # Installation steps for Linux 386
        bin.install "dns-manager-v1.0.9-linux-386" => "dns-manager"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "dns-manager-v1.0.9-linux-arm64" => "dns-manager"
      else
        # Installation steps for Linux ARM
        bin.install "dns-manager-v1.0.9-linux-arm" => "dns-manager"
      end
    end
  end
end
end
