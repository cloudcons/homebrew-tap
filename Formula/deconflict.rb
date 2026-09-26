# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.15"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.15/deconflict_0.1.15_darwin_arm64.tar.gz"
      sha256 "2b00314b44564b704b27f152d61dd6a2b6a6da89da22ee2838f98121db0c5242"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.15/deconflict_0.1.15_darwin_amd64.tar.gz"
      sha256 "03c7c26280efd3d8d42e41d85b9f7b29f582be859ccafe0e33ae930b8172b10a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.15/deconflict_0.1.15_linux_arm64.tar.gz"
      sha256 "2bfc86b1040ecfeeb866bc27d5457599d8b9c2711f8f1bbdc105d987fb73222a"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.15/deconflict_0.1.15_linux_amd64.tar.gz"
      sha256 "8d61259086c98c4b4b9109b4a920f2b6de720486c008ce6071356866dba79751"
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
