# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.14"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.14/deconflict_0.1.14_darwin_arm64.tar.gz"
      sha256 "73dfa8f424084b8949f7fa30b8e8070dc7ccda0723e78c5c10bd7c11fdc0fc17"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.14/deconflict_0.1.14_darwin_amd64.tar.gz"
      sha256 "3a0e883d7e58684375b6bc737852cb040cb0cc794d46aecf4da3d4f8a5056a45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.14/deconflict_0.1.14_linux_arm64.tar.gz"
      sha256 "c3a38734c7db52c7a1ca753b3095e095df7a6b8f3fa49b1b23f5b4e04a8d084d"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.14/deconflict_0.1.14_linux_amd64.tar.gz"
      sha256 "ba0401da2330ca9bebdd4692c1b1cf8da6025e15175e65d2d42818a709bd6cc6"
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
