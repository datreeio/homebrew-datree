# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.6/datree-cli_1.0.6_Darwin_x86_64.zip"
    sha256 "c9da2630bd04282370b9d427ab26cea6a447f3ec99c4196bfa33d24987a81711"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.6/datree-cli_1.0.6_Darwin_arm64.zip"
    sha256 "c8989326d2e80873c322a45653cbb4da7dc6b16d775ea5f293b0c32c46656706"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.6/datree-cli_1.0.6_Linux_x86_64.zip"
    sha256 "1b3a4f97ab1daa15a1e773a85856f3c98db80c433c4a2b3b1c8d51431a38070a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.6/datree-cli_1.0.6_Linux_arm64.zip"
    sha256 "d00eb5584c8b38342ea901134da559c72cede597ef2b381ea622a300044a994b"
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
      tput init
    EOS
  end
end
