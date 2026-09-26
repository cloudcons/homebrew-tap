# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.12"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.12/deconflict_0.1.12_darwin_arm64.tar.gz"
      sha256 "ac09808cde3fefc393d5f8101981207898fc35820d3a5cf490d7a5e1d97ac9f6"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.12/deconflict_0.1.12_darwin_amd64.tar.gz"
      sha256 "c129e2501a7093bbcd514a46b07ddb06e3f2eef4bc21df27e3f74acc4d6d8dfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.12/deconflict_0.1.12_linux_arm64.tar.gz"
      sha256 "3db8e513bbed46a8795d88bb8a0bddc73c96fe1038c4743f0613c045133af738"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.12/deconflict_0.1.12_linux_amd64.tar.gz"
      sha256 "065d61ade48925b867ea87cfe2ae62698b743ebb5187e6286b9d07ff9c8b6a49"
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
