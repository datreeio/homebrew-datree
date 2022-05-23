# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.28"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.28/datree-cli_1.4.28_Darwin_x86_64.zip"
    sha256 "de7d7fa2d44d6bd1117feb37b9d1586d1c0520ec31a1f394bbea14893647eefe"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.28/datree-cli_1.4.28_Darwin_arm64.zip"
    sha256 "9ef478130fc029333c413196cc9efb7950ed51b04d98f8e008fb34f0690a9d2e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.28/datree-cli_1.4.28_Linux_x86_64.zip"
    sha256 "5c2adf66fa4d0f1264db77e2111e922a827de5430774e701e421cc693baaf580"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.28/datree-cli_1.4.28_Linux_arm64.zip"
    sha256 "0fb6cb8466cef9debb0ae0ec28dd1c9953d30d1cc40c700545eb5908f0c59c01"
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
