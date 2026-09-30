# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.17"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.17/deconflict_0.1.17_darwin_arm64.tar.gz"
      sha256 "46270764b5b6c94394867393c458576f6c688000e61872cbf163164cf6899c82"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.17/deconflict_0.1.17_darwin_amd64.tar.gz"
      sha256 "44a3652a9e25ad9106abb24a6684678964813298397e54008791fc27696f18fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.17/deconflict_0.1.17_linux_arm64.tar.gz"
      sha256 "be26ceffcc7919f98050f611cd9bcfe54ca4d8140bd6cf3f678ad2066c0d0d61"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.17/deconflict_0.1.17_linux_amd64.tar.gz"
      sha256 "6f7d8ce36428801eac214914160f927549f98ef89ffe694300ae66fabdf79e06"
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
