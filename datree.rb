# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.9/datree-cli_1.2.9_Darwin_x86_64.zip"
    sha256 "344fde3e3484d91a57bcf17d196e279506f8d7b90e5e95086829280f844e247f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.9/datree-cli_1.2.9_Darwin_arm64.zip"
    sha256 "995510f35d98091b50221e027630d9da3c1c2ad343c29d6db30736d058d710ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.9/datree-cli_1.2.9_Linux_x86_64.zip"
    sha256 "b9e493f12762d5ea9249f2ee3b9531390d0a520ddeb1f60affb7796d2e88b202"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.9/datree-cli_1.2.9_Linux_arm64.zip"
    sha256 "4a8e670c7fa860663d61e041b5c3c551050551fc9535e0dfd25f6b69bf48a136"
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
