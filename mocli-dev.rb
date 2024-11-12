class MocliDev < Formula
  desc "View your mogenius account in style from your CLI environment! [dev]"
  homepage "https://www.mogenius.com"
  
  version "1.8.2-dev.1"
  license "MIT"

  test do
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.1/mocli-dev-v1.8.2-dev.1-darwin-arm64.tar.gz"
      sha256 "31ff270825f606128e9cf02a10bb074d2a3e3d9035fa87cbe9ce4941d3fd9204"
    elsif Hardware::CPU.intel?
      url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.1/mocli-dev-v1.8.2-dev.1-darwin-amd64.tar.gz"
      sha256 "854a23a56af1fcd48587a440bb9df1f1c00085e5821930222fd3c73c8fce8d63"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.1/mocli-dev-v1.8.2-dev.1-linux-amd64.tar.gz"
        sha256 "e43f025aa7d2838964143f00a5e911c720331d509224a724fac06b9d83048979"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.1/mocli-dev-v1.8.2-dev.1-linux-386.tar.gz"
        sha256 "b1523831ad0011237b52d8e421befa5e6f7b1d253418a7ebca45990293ea2737"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.1/mocli-dev-v1.8.2-dev.1-linux-arm64.tar.gz"
        sha256 "38b1913748b9b67c8f5d449e14e65d7173c74a87bca246c244cfdc1cd37d49da"
      else
        url "https://github.com/mogenius/homebrew-mocli-dev/releases/download/v1.8.2-dev.1/mocli-dev-v1.8.2-dev.1-linux-arm.tar.gz"
        sha256 "fd20ef45156147d8c008d1cdecb79a7f0df707f579ef456014ee3dc3c9f83f5e"
      end
    end
  end
  
  def install
  if OS.mac?
    if Hardware::CPU.arm?
      # Installation steps for macOS ARM64
      bin.install "mocli-dev-v1.8.2-dev.1-darwin-arm64" => "mocli-dev"
    elsif Hardware::CPU.intel?
      # Installation steps for macOS AMD64
      bin.install "mocli-dev-v1.8.2-dev.1-darwin-amd64" => "mocli-dev"
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux AMD64
        bin.install "mocli-dev-v1.8.2-dev.1-linux-amd64" => "mocli-dev"
      else
        # Installation steps for Linux 386
        bin.install "mocli-dev-v1.8.2-dev.1-linux-386" => "mocli-dev"
      end
    elsif Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        # Installation steps for Linux ARM64
        bin.install "mocli-dev-v1.8.2-dev.1-linux-arm64" => "mocli-dev"
      else
        # Installation steps for Linux ARM
        bin.install "mocli-dev-v1.8.2-dev.1-linux-arm" => "mocli-dev"
      end
    end
  end
end
end
