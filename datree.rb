# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.0/datree-cli_1.4.0_Darwin_x86_64.zip"
    sha256 "034b4aae02def273a7c49816db9b70a156597af35d3b4476bab5483ba7de5aba"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.0/datree-cli_1.4.0_Darwin_arm64.zip"
    sha256 "f2964da09a17c2b653cec6409e40968e3fab2816ea77e1d881e3c52ae23f97b1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.0/datree-cli_1.4.0_Linux_x86_64.zip"
    sha256 "fb95ea14b0f7d32a0319ff078fbe59cea9a024023796417fdf8ef5beff1c3460"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.0/datree-cli_1.4.0_Linux_arm64.zip"
    sha256 "1bf5c7fdf9d57a510991fb01aa34040a5443e508e5cd38482429101c62eb7be2"
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
