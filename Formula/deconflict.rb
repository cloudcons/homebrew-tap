# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.9/deconflict_0.1.9_darwin_arm64.tar.gz"
      sha256 "d8240859e071ff2f6dd810554578be798b74c1b507eeb231830382a10988381e"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.9/deconflict_0.1.9_darwin_amd64.tar.gz"
      sha256 "346eace6e06216e96ae1f47937e0188d0fa9255096997fc47370ad2596dc4d3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.9/deconflict_0.1.9_linux_arm64.tar.gz"
      sha256 "76647ae4f0cbc161c4061f11fe43f5301c645ddb22f5a981802a41874ca4db58"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.9/deconflict_0.1.9_linux_amd64.tar.gz"
      sha256 "29c3783e86d0d05831566da0c0e4adc9a52706dac0ca03cc7f069f087568634a"
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
