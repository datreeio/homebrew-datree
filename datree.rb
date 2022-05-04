# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.4/datree-cli_1.4.4_Darwin_x86_64.zip"
    sha256 "855c9e8edaa56bcb66811963017830ac0d66a3aeb16570d5c6cde93aff2ea4f6"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.4/datree-cli_1.4.4_Darwin_arm64.zip"
    sha256 "62fd7601e56c534d3cd6e00af4fa242c9d9763869ba651731707156bb0bd1e16"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.4/datree-cli_1.4.4_Linux_x86_64.zip"
    sha256 "97efdbc6e3394e604f0ea4a2fd4c9c476e9a264ce00426aa1964356bbfa10cfd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.4/datree-cli_1.4.4_Linux_arm64.zip"
    sha256 "03c270ae7429b9ff344bd2f5272828083d4394d4298e8d926ba85e97102d6ab7"
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
