# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.20"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.20/datree-cli_1.4.20_Darwin_x86_64.zip"
    sha256 "0f04da8e2ba40b0c6a9f43a27bf841ca7b33c25e960128e18f70d1fa779f56f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.20/datree-cli_1.4.20_Darwin_arm64.zip"
    sha256 "7b77b21492923a30c39993cfcbab3b26110e44577434392f22308cbd5763d803"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.20/datree-cli_1.4.20_Linux_x86_64.zip"
    sha256 "66bf5fae86d0fe866b10a768efb40098016d2b1d29a2a0d119b5a5aa4a14da1e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.20/datree-cli_1.4.20_Linux_arm64.zip"
    sha256 "ca0a260fc02a94211d070d4bb55cd596e5c9d0dc8389a355f913bba5053765d0"
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
