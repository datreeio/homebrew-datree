# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.3/datree-cli_1.4.3_Darwin_x86_64.zip"
    sha256 "15f900cc06fb0825112b3e4dc63c4118778589da912dafcba4cd0749b1898a57"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.3/datree-cli_1.4.3_Darwin_arm64.zip"
    sha256 "18fb63b9d6309de09f31a1fe82f7c5cb390dee99cc4fd0a444146e52a7554b86"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.3/datree-cli_1.4.3_Linux_x86_64.zip"
    sha256 "78b676d9a5190844c5de9a5eb902124ea0bff6bc376c9f9778ae7b16cffebe57"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.3/datree-cli_1.4.3_Linux_arm64.zip"
    sha256 "c362edb38d2555b060794b5bf9958198618b25bc87e0002fe82bc91daf3a600d"
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
