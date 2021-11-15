# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.46"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.46/datree-cli_0.14.46_Darwin_x86_64.zip"
    sha256 "3b0b41d2c308f589d02b4552dd48265ccd8b83d1d2e34f4c5a64df95780e6c6c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.46/datree-cli_0.14.46_Linux_x86_64.zip"
    sha256 "501f688e131bb425966dead4235aab1a1c12f3123c869bbf2a633894d038106c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.46/datree-cli_0.14.46_Linux_arm64.zip"
    sha256 "b7ad879379da2d380afa5fdf081afecbad1c3bfaf5337c198602c13e667b2923"
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
