# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.20"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.20/deconflict_0.1.20_darwin_arm64.tar.gz"
      sha256 "3352030973126c1607d8a2e83cf15eb53220adab7a1226d28a71d33ac24c5442"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.20/deconflict_0.1.20_darwin_amd64.tar.gz"
      sha256 "ca511b081c4aee1bcc235ac427644ef0915ff2e611568a42dcce2cbfb459c8c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.20/deconflict_0.1.20_linux_arm64.tar.gz"
      sha256 "85ccefc1b0849eb000aa7e590a6fcdb8040609ffcc3a4f49587824a619cc7c98"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.20/deconflict_0.1.20_linux_amd64.tar.gz"
      sha256 "19c8716be59771c8b5db6ba63aee413d3d5c6000f472e8e0e913860edd2697d9"
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
