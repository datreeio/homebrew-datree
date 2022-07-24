# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.0/datree-cli_1.6.0_Darwin_x86_64.zip"
    sha256 "5ef3a219fc8024287f1f94c77e9de175923a76c80efb2198a4ca1a692e89de9a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.0/datree-cli_1.6.0_Darwin_arm64.zip"
    sha256 "fcb3c97f9deafec8d51a9b6ecd7f1aac4ccf82b75aaf1b7ae8d4a9df0d9c0e98"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.0/datree-cli_1.6.0_Linux_x86_64.zip"
    sha256 "491ad4244d9b2fe99d3d58ee4024eb5904e1b7c9efb012178651c584f28a9929"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.0/datree-cli_1.6.0_Linux_arm64.zip"
    sha256 "faa12bc201a9612b656d2818c69135ea9937acb91befa0be8443d7f4ef5b7574"
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
