# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.10/deconflict_0.1.10_darwin_arm64.tar.gz"
      sha256 "c2e824dfe0324009abfe3b4e698ea635d9ee4a26ca17d057d7f34210e4730d6e"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.10/deconflict_0.1.10_darwin_amd64.tar.gz"
      sha256 "51cd215f6a3eeaca89bfe8050bcee6cb3dd201117c7ea4c3c7cfe4f1d6216b42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.10/deconflict_0.1.10_linux_arm64.tar.gz"
      sha256 "7a1672fb78f55d73f0db26472627a04cfe76ceffc2faa6badab287582cba5358"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.10/deconflict_0.1.10_linux_amd64.tar.gz"
      sha256 "22ec3c179ad6a216d9a92f76414ee905b811565bc2d35a80318fa31c3fa80fa8"
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
