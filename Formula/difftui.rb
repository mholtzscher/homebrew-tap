class Difftui < Formula
  desc "TUI for comparing and diffing text"
  homepage "https://github.com/mholtzscher/difftui"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.3/difftui-darwin-arm64"
      sha256 "05a0156a27dd262040dc0ec12af0e03b01dfcf0e0767d1fa8b8f0f6078fd8de7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.3/difftui-linux-arm64"
      sha256 "170db8eee0c7864bb5933d5d9e0de94f85a47235a58cd376730d50c45e195a62"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.3/difftui-linux-x64"
      sha256 "3ac4db133365b4b5c3efbc6886b538e11c5ca78a97bc647a5af8e074e3317884"
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
