class SkillManager < Formula
  desc "Portable skill management for Codex, Cursor, and Antigravity"
  homepage "https://github.com/Mel6502-AI/homebrew-skill-manager"
  version "1.0.0-rc.1"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0-rc.1/skill-manager_1.0.0-rc.1_darwin_arm64.tar.gz"
      sha256 "398143c62b3bc76910c53ae5e506b4485bbd3804ee997831182acc860c6285a9"
    else
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0-rc.1/skill-manager_1.0.0-rc.1_darwin_amd64.tar.gz"
      sha256 "f97ba7483d0be5fe76245f344441eb163da159e0f4bfc1ec3e0337b9f9ddd6dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0-rc.1/skill-manager_1.0.0-rc.1_linux_arm64.tar.gz"
      sha256 "51453100d4dfb05d39d25e186ec4e2cdd4a55452e0650ca9c7d57d8fad783d75"
    else
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0-rc.1/skill-manager_1.0.0-rc.1_linux_amd64.tar.gz"
      sha256 "d0522b8b6672f22387487f58a30f3b81bd1e9f974941d7c52d2543c1b86679c3"
    end
  end

  def install
    bin.install "skill-manager"
  end

  def caveats
    <<~EOS
      Uninstall removes only the packaged executable. Portable configuration,
      device-local state, and caches are preserved. Review and apply an explicit
      `skill-manager purge` plan to remove those directories.
    EOS
  end

  test do
    assert_match "skill-manager.version", shell_output("#{bin}/skill-manager version --json")
  end
end
