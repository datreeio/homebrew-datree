# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.15"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.15/datree-cli_1.0.15_Darwin_x86_64.zip"
    sha256 "b81778dfc1fd66850118765366f8545640d3894667886491966bf2a5b1ce0689"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.15/datree-cli_1.0.15_Darwin_arm64.zip"
    sha256 "0766b4d9c5fc5c092bb5afbf15690d0ec631081dd95455ba1973dbca0aa47505"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.15/datree-cli_1.0.15_Linux_x86_64.zip"
    sha256 "53e5a042848b9f603cf43bc94154fd8230b4332d0b73ddba6e00ac67985e02d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.15/datree-cli_1.0.15_Linux_arm64.zip"
    sha256 "120b0e9227dc3dbbe3926aada24731a6ce991c8a45a3a62cc02ece74b88fee9f"
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
