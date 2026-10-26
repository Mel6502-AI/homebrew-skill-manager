class SkillManager < Formula
  desc "Portable skill management for Codex, Cursor, and Antigravity"
  homepage "https://github.com/Mel6502-AI/homebrew-skill-manager"
  version "1.0.0"
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0/skill-manager_1.0.0_darwin_arm64.tar.gz"
      sha256 "ac7a9da778aef21f8a7fe11d6d3ce7c428cb1993858824c054f08eb5c67d4fe1"
    else
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0/skill-manager_1.0.0_darwin_amd64.tar.gz"
      sha256 "83722434937af02e02f708ebfcdee294c0c0366c77d3492396596d79dee47af8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0/skill-manager_1.0.0_linux_arm64.tar.gz"
      sha256 "3de28f15e0afcfa5c84af74650668510a76ff752f3085beb0002084cf0bb1678"
    else
      url "https://github.com/Mel6502-AI/homebrew-skill-manager/releases/download/v1.0.0/skill-manager_1.0.0_linux_amd64.tar.gz"
      sha256 "c972d934fa6bd3a6e434378144ed00f5ed908b1feaf4faec5473242cb9acc743"
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
