class Skytui < Formula
  desc "Terminal Pomodoro timer with projects and session history"
  homepage "https://github.com/fmo/skytui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.4.0/skytui_1.4.0_darwin_arm64.tar.gz"
      sha256 "92ceac9fc43a271b180f451342c2da9f13a18b1f8393f8c1bb221df6040ad747"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.4.0/skytui_1.4.0_darwin_amd64.tar.gz"
      sha256 "2d2fbe76d6b47cf49ee57184510db17c1acfe875f2896979b32444e9ee2735cc"
    end
  end

  on_linux do
    depends_on "libnotify"

    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.4.0/skytui_1.4.0_linux_arm64.tar.gz"
      sha256 "23b734110c0a75b6106a703f0b3e9db5d8d6dd6d668267c94bef7625996080e6"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.4.0/skytui_1.4.0_linux_amd64.tar.gz"
      sha256 "f6b0e4af3dae7e70d6ae47e5c80fa36d7b8079d46a223d806a8925b7d1e06411"
    end
  end

  def install
    bin.install "skytui"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/skytui --version")
  end
end
