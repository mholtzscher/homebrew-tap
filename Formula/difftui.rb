class Difftui < Formula
  desc "TUI for comparing and diffing text"
  homepage "https://github.com/mholtzscher/difftui"
  url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.8/difftui-linux-x64"
  version "0.1.8"
  sha256 "4fad60d84a1adf2bf4a7bf2d8d981b5bf86bf09814824d4533040d465323b02f"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.7/difftui-darwin-arm64"
      sha256 "05a0156a27dd262040dc0ec12af0e03b01dfcf0e0767d1fa8b8f0f6078fd8de7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.7/difftui-linux-arm64"
      sha256 "170db8eee0c7864bb5933d5d9e0de94f85a47235a58cd376730d50c45e195a62"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.8/difftui-linux-x64"
      sha256 "4fad60d84a1adf2bf4a7bf2d8d981b5bf86bf09814824d4533040d465323b02f"
    end
  end

  def install
    binary_name = "difftui"
    if OS.mac? && Hardware::CPU.arm?
      binary_name = "difftui-darwin-arm64"
    elsif OS.linux? && Hardware::CPU.arm?
      binary_name = "difftui-linux-arm64"
    elsif OS.linux? && Hardware::CPU.intel?
      binary_name = "difftui-linux-x64"
    end

    bin.install binary_name => "difftui"
  end

  test do
    # difftui is a TUI app without a --version flag, so just verify the binary exists
    assert_predicate bin/"difftui", :executable?
  end
end
