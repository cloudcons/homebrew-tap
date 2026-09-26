# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.11"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.11/deconflict_0.1.11_darwin_arm64.tar.gz"
      sha256 "cf5064a049296c719068b20749e5898c1afa34890819e4e99fd73c9877c81db8"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.11/deconflict_0.1.11_darwin_amd64.tar.gz"
      sha256 "bc8e000026dca95b248b00cd316ffb8ce6526b957aae5d528bb633c91b2b27f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.11/deconflict_0.1.11_linux_arm64.tar.gz"
      sha256 "266d2e8eb34250eee0adb5bd68418df22e66175564a247f5fd3df8f8fe8af9fa"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.11/deconflict_0.1.11_linux_amd64.tar.gz"
      sha256 "f687d66977c11fb47a7a1cc35ef58eddc998a76b8ebb3b223c491b5f962c2446"
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
