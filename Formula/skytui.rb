class Skytui < Formula
  desc "Terminal Pomodoro timer with projects and session history"
  homepage "https://github.com/fmo/skytui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.0.0/skytui_1.0.0_darwin_arm64.tar.gz"
      sha256 "fb4589e005f520780c12e0f2c66c4fb3dfdc23608fadd0e528938c46e327a4e8"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.0.0/skytui_1.0.0_darwin_amd64.tar.gz"
      sha256 "81f514608e93ca94b958be4c2cef4f5dfe92710af7be024cb2c55d1873e10fdb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.0.0/skytui_1.0.0_linux_arm64.tar.gz"
      sha256 "e370ce12d0d3dd3591840f16a1a7bd884adc437d178ea2808ca0912b2d838d1b"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.0.0/skytui_1.0.0_linux_amd64.tar.gz"
      sha256 "c90cf06bddd6d9703c222668353d0d407dc4546a1b8f9f19d7070b3f0212ae56"
    end
  end

  def install
    bin.install "skytui"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/skytui --version")
  end
end
