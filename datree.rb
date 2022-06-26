# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.19"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.19/datree-cli_1.5.19_Darwin_x86_64.zip"
    sha256 "cc4a0cbdf2e9d2a3a3ab4e6a5940aff3df0f9509b0175fa24f7c9e74789a744f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.19/datree-cli_1.5.19_Darwin_arm64.zip"
    sha256 "8e842eca292cb67eee47e77d7782c04004f1703426b4a52025c07fc4276ac1cc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.19/datree-cli_1.5.19_Linux_x86_64.zip"
    sha256 "1ec23ebbe5a697c33de40d2f9ae5755d4e15def93af1a68668b9049e9221c247"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.19/datree-cli_1.5.19_Linux_arm64.zip"
    sha256 "638289d6a51515867ba798dbcab812bdb749d5aa3a098dc3f97343285e216f80"
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
