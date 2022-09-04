# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.16"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.16/datree-cli_1.6.16_Darwin_x86_64.zip"
    sha256 "9da027203ff198a33efb60084538473a911bdb93b4e0c0490d656f2cc7d8fa3a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.16/datree-cli_1.6.16_Darwin_arm64.zip"
    sha256 "bbff53adba929bd3b4e172000caf210a6d4d50d46a88f139073b1e1ec1ee25bf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.16/datree-cli_1.6.16_Linux_x86_64.zip"
    sha256 "5b48c852f04afff5b67da771d3aa420215818d23fbc57f33052cf2f2cb8a3698"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.16/datree-cli_1.6.16_Linux_arm64.zip"
    sha256 "73b39e7e3fad8201e903ae98d5371c05b4e53681081455ebe44e4927c8b7494e"
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
