class Skytui < Formula
  desc "Terminal Pomodoro timer with projects and session history"
  homepage "https://github.com/fmo/skytui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.2.0/skytui_1.2.0_darwin_arm64.tar.gz"
      sha256 "c4f2c8b3b38bafc6d81aa1dffb45563ce5cdda0f657983c249763a8c06e8d552"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.2.0/skytui_1.2.0_darwin_amd64.tar.gz"
      sha256 "180015d620f947ec65f4edc70e28ef5705af458e4c1745427d65888ebb123ac8"
    end
  end

  on_linux do
    depends_on "libnotify"

    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.2.0/skytui_1.2.0_linux_arm64.tar.gz"
      sha256 "552c592de6be56adba599a504f48aefc0ac5ac94744995af51365593c17fc27f"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.2.0/skytui_1.2.0_linux_amd64.tar.gz"
      sha256 "1f5bb7ded51921b339de47e6248da9b24733a15e86f9ba5694b6a3dd772a9007"
    end
  end

  def install
    bin.install "skytui"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/skytui --version")
  end
end
