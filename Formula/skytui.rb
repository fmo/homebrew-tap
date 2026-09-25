class Skytui < Formula
  desc "Terminal Pomodoro timer with projects and session history"
  homepage "https://github.com/fmo/skytui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.3.0/skytui_1.3.0_darwin_arm64.tar.gz"
      sha256 "01f4316ad542acd06a1a2af0399f245026e96239b07e68fea4ae5e389b820ee6"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.3.0/skytui_1.3.0_darwin_amd64.tar.gz"
      sha256 "f5aeda7327f04120f92fb6f2ac1a1960a263b1dcbffdd78d659df46e59915a0d"
    end
  end

  on_linux do
    depends_on "libnotify"

    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.3.0/skytui_1.3.0_linux_arm64.tar.gz"
      sha256 "cbef556cddbdf2c2c206d30051e24b92483f644c774c6b62504061978ef5f4f7"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.3.0/skytui_1.3.0_linux_amd64.tar.gz"
      sha256 "38d981227504d0676a706302fae957ced4d538e747eb46262c4335b869c3b1ba"
    end
  end

  def install
    bin.install "skytui"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/skytui --version")
  end
end
