class Skytui < Formula
  desc "Terminal Pomodoro timer with projects and session history"
  homepage "https://github.com/fmo/skytui"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.1.0/skytui_1.1.0_darwin_arm64.tar.gz"
      sha256 "0999d5a3dbf2c3224ce9dd0665c9f793e21b7abe6ab20e43d330951f72102497"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.1.0/skytui_1.1.0_darwin_amd64.tar.gz"
      sha256 "90916d6ea885ada7643c42bf85d6451f5fb9f6cc9bf6576da40774d3c7aec0f6"
    end
  end

  on_linux do
    depends_on "libnotify"

    on_arm do
      url "https://github.com/fmo/skytui/releases/download/v1.1.0/skytui_1.1.0_linux_arm64.tar.gz"
      sha256 "473cac92a1dadf18875e0b616906b474400a254ad41b0028bfcb1bc46b5d3731"
    end

    on_intel do
      url "https://github.com/fmo/skytui/releases/download/v1.1.0/skytui_1.1.0_linux_amd64.tar.gz"
      sha256 "a86f8c423dacf87132efc13d390221db8d3b12a873f3b46819548391edaca752"
    end
  end

  def install
    bin.install "skytui"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/skytui --version")
  end
end
