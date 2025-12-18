class Difftui < Formula
  desc "TUI for comparing and diffing text"
  homepage "https://github.com/mholtzscher/difftui"
  version "0.1.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.12/difftui-darwin-arm64"
      sha256 "7e19f2160bf2975879c05608f9c57c40c10337ac96e72da87546dc795e1bb9fa"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.12/difftui-darwin-x64"
      sha256 "3c72cc4b42db01537813384a987288efe1fc5f665c6defce77fa873855e09fcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.12/difftui-linux-arm64"
      sha256 "293c245c946500ee1d92cd2f8901f49c6b2fe79583bd43e23f38c40d82e466ba"
    end
    on_intel do
      url "https://github.com/mholtzscher/difftui/releases/download/v0.1.12/difftui-linux-x64"
      sha256 "57a436dfa080307a65e298a7686938df3dc134a64c9857f0aaff5f138e7356d5"
    end
  end

  def install
    bin.install Dir["difftui*"].first => "difftui"
  end

  test do
    assert_predicate bin/"difftui", :executable?
  end
end
