# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.22"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.22/deconflict_0.1.22_darwin_arm64.tar.gz"
      sha256 "b66e77febceefabb358c104e1ab50ca4465f7a2387584bdc38f1d8a06d0212fe"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.22/deconflict_0.1.22_darwin_amd64.tar.gz"
      sha256 "4aed3565a244450914bd1f850192647cb280a1d27ef79107af1b89c2789cc96a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.22/deconflict_0.1.22_linux_arm64.tar.gz"
      sha256 "fc0b3c52200dc288a47102cd5faf07a13ddb6e14aeb573fa7995b4514e309ba6"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.22/deconflict_0.1.22_linux_amd64.tar.gz"
      sha256 "fe10cc3a547188c841e33df655e50e6f2b7f226c9ff9e2754d2673c8ecfff5df"
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
