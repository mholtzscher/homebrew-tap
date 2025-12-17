class Difftui < Formula
  desc "TUI for comparing and diffing text"
  homepage "https://github.com/mholtzscher/difftui"
  version "0.1.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.11/difftui-darwin-arm64"
      sha256 "10261fc7e3f3126f23cab6243bc8ac5f2effd31559ae63119d3f4e35e363952b"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.11/difftui-darwin-x64"
      sha256 "e50a4c12af1a2f9fcb83791fc7d7dd96d987a8d06bb6138052221502574d93d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.11/difftui-linux-arm64"
      sha256 "811ac8617eaecedff0fcadba35576f9f2c53813cc7b5a90b2df4edc3a9a81411"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.11/difftui-linux-x64"
      sha256 "952db6dd5b2aff951a8e7c88e92a876a667b10cda1ac41150f962275e443c3db"
    end
  end

  def install
    bin.install Dir["difftui*"].first => "difftui"
  end

  test do
    assert_predicate bin/"difftui", :executable?
  end
end
