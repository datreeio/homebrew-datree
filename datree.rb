# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.13"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.13/datree-cli_1.6.13_Darwin_x86_64.zip"
    sha256 "c66981c5a8fb15ade2de67f27062c7ae362d65ffdaa3f7d8b73e1ba2c23e8ea4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.13/datree-cli_1.6.13_Darwin_arm64.zip"
    sha256 "d8f02d07e41f65a3e48338466cd41070d26e4ec6b7d631ab49534b053290ce16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.13/datree-cli_1.6.13_Linux_x86_64.zip"
    sha256 "1605a22bdb975690a313560dfe23efa5e8003a3821f6a08fe0cf478c940fcb44"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.13/datree-cli_1.6.13_Linux_arm64.zip"
    sha256 "607f228e7e4588221bc7f8ed73eb96187adf1302fe2916bfbc67c415609b3545"
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
