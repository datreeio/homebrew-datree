# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.18"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.18/datree-cli_0.15.18_Darwin_x86_64.zip"
    sha256 "726fd7c12fc60bb0729fbbb8b4217678b86257cc99bfbfa9dffa703bb1db6f95"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.18/datree-cli_0.15.18_Darwin_arm64.zip"
    sha256 "ae580cf049a3ccb59e0a200450f2b3a983eac7760b09ff6d983b210a9228b133"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.18/datree-cli_0.15.18_Linux_x86_64.zip"
    sha256 "897d2af7da294b3523f62e0e143f41066cae165a6df84ddc14b905aa7e7a80ca"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.18/datree-cli_0.15.18_Linux_arm64.zip"
    sha256 "a1d34b3b5bf81a8f314f4eb4f15b9347c0086531dc861b8bbd6211d2b8e1b845"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
