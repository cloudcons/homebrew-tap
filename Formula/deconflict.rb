# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.21"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.21/deconflict_0.1.21_darwin_arm64.tar.gz"
      sha256 "d2b111a8621227fc36efb876a106812854dcb18a30eeddfb398923a41d3dfe14"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.21/deconflict_0.1.21_darwin_amd64.tar.gz"
      sha256 "eeebe9e537a08329e135376a32c0201b66c41020051a13da3c8ae9a55ee701e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.21/deconflict_0.1.21_linux_arm64.tar.gz"
      sha256 "535b714e98ae6e145a91c028b562d84417fea258211e72903a3849e5ed26fc6e"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.21/deconflict_0.1.21_linux_amd64.tar.gz"
      sha256 "9841979438782bfc642391805b5113fe44ce1089cf8c1c5441d216f4813e85bd"
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
