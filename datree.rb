# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.17"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.17/datree-cli_1.5.17_Darwin_x86_64.zip"
    sha256 "1ccc6e310e8ca05ca63842cb623bb070601e12474aad19204509a31700ec2d5e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.17/datree-cli_1.5.17_Darwin_arm64.zip"
    sha256 "ac6ba2b8a6797c05adc409f4badd51a44b51e012670c2d3445dd5641bd69196d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.17/datree-cli_1.5.17_Linux_x86_64.zip"
    sha256 "2a6505c6f88afbe6a3cf9a8e63e7df6b7db7ca63164403b213bae51aeded6c69"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.17/datree-cli_1.5.17_Linux_arm64.zip"
    sha256 "bc48107b506ba83be738e4d4ab55e91e266d25b3c043f3fa1e6dcadd92643960"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://github.com/datreeio/helm-datree
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
