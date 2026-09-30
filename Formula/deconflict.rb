# Generated from packaging/homebrew.sh in cloudcons/deconflict-cli by this
# tap's update workflow. Edits here are overwritten by the next release.
class Deconflict < Formula
  desc "Advisory intention claims and negotiated agreements for coding agents"
  homepage "https://github.com/cloudcons/deconflict-cli"
  version "0.1.19"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.19/deconflict_0.1.19_darwin_arm64.tar.gz"
      sha256 "b7670bb9bff79ad217eba39378fdb8546596ad425ce04ead025ff9af07cc876b"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.19/deconflict_0.1.19_darwin_amd64.tar.gz"
      sha256 "9615c5c74f0b69b5827552935a2dfb8359616116dbc14544bedeb70229347031"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.19/deconflict_0.1.19_linux_arm64.tar.gz"
      sha256 "911605d94e9491628ab7e9c028911f9ac48d166b7c3376418d68e69c3d30c716"
    end
    on_intel do
      url "https://github.com/cloudcons/deconflict-cli/releases/download/v0.1.19/deconflict_0.1.19_linux_amd64.tar.gz"
      sha256 "99a9bd1deff03cf402017ec32af9a38858ce5ddf95c8418d84b529b57712f028"
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
