class AerospaceUtils < Formula
  desc "CLI for managing Aerospace workspace gaps"
  homepage "https://github.com/mholtzscher/aerospace-utils"
  version "0.2.0"
  license "MIT"
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/mholtzscher/aerospace-utils/releases/download/v#{version}/aerospace-utils_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_AMD64"
    else
      url "https://github.com/mholtzscher/aerospace-utils/releases/download/v#{version}/aerospace-utils_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_ARM64"
    end
  end
  def install
    bin.install "aerospace-utils"
  end
  test do
    system "#{bin}/aerospace-utils", "--version"
  end
end
