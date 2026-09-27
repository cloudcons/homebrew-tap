# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.16"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.16/deconflict_0.1.16_darwin_arm64.tar.gz"
      sha256 "cd42c3ab6314c15dc852de607595ff79c431ca1298459390a2c097872d245aa4"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.16/deconflict_0.1.16_darwin_amd64.tar.gz"
      sha256 "e24683a05aa406904d88aa704a3b4de6b658594d7479428d32c67dd0332eb610"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.16/deconflict_0.1.16_linux_arm64.tar.gz"
      sha256 "f9b61c20f312b2b8f2ea809c1cd44dc715bac8a83a52c8ff0458ffce48617d4e"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.16/deconflict_0.1.16_linux_amd64.tar.gz"
      sha256 "b6dcd5d74694f3ca531d085b518e9b0befbbf1088b5d18b88322ad46f5a364ef"
    end
  end

  def install
    bin.install "deconflict"
  end

  def caveats
    <<~EOS
      Wire deconflict into the coding agents you run with:
        deconflict install --agent all
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/deconflict version")
  end
end
