# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.13"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.13/deconflict_0.1.13_darwin_arm64.tar.gz"
      sha256 "acde6d2c43750c5413cdffd6c640217779efdec14def58e61a60d3404cfab56c"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.13/deconflict_0.1.13_darwin_amd64.tar.gz"
      sha256 "08e12aea2ddce363fc15a7184aef34da8ea0e8b8bf63c1b547c41ebea366a4dd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.13/deconflict_0.1.13_linux_arm64.tar.gz"
      sha256 "e551b10cb68df610f76c84c89802e0227faa3a29436fdc75d0e1a4e9542ae697"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.13/deconflict_0.1.13_linux_amd64.tar.gz"
      sha256 "811b2e1ea61110859ab1330cc0ff8ac8e19c9a2d580fa8fc0a354ee41009182e"
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
