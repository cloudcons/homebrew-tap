# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.18"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.18/deconflict_0.1.18_darwin_arm64.tar.gz"
      sha256 "3c9557b8d15c0475219a6985fce7c8907ea2b0174607d3bdd111d719d5674d4d"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.18/deconflict_0.1.18_darwin_amd64.tar.gz"
      sha256 "4ef9c317780e157ebee12d056c5a1ce4bc31dab11ad26f660f6e5bdfff09fc52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.18/deconflict_0.1.18_linux_arm64.tar.gz"
      sha256 "842243b4bda787b2ebc60570fc4713f7f69d87498b1d3ea393b2be3218f899ad"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.18/deconflict_0.1.18_linux_amd64.tar.gz"
      sha256 "30ba76ffb014597907ca06af20525d88193be6ae73c7cae8962dba20ced345a0"
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
