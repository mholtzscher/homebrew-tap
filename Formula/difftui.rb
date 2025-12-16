class Difftui < Formula
  desc "TUI for comparing and diffing text"
  homepage "https://github.com/mholtzscher/difftui"
  version "0.1.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.10/difftui-darwin-arm64"
      sha256 "43ad69dcaf1d912fa9c2ca16254decb37750084da3be03dae5740cdb5f9df060"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.10/difftui-darwin-x64"
      sha256 "fc52c83347b2e18f10f46ee158b16422343ec13cf11e9abe86c24ddbbdf50891"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.10/difftui-linux-arm64"
      sha256 "6bde4e23b8f4dcaa3b40fa92486af306e39c060ffcd19a99041b27184e30be88"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/difftui-v0.1.10/difftui-linux-x64"
      sha256 "4fad60d84a1adf2bf4a7bf2d8d981b5bf86bf09814824d4533040d465323b02f"
    end
  end

  def install
    bin.install Dir["difftui*"].first => "difftui"
  end

  test do
    assert_predicate bin/"difftui", :executable?
  end
end
