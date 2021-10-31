# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.26"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.26/datree-cli_0.14.26_Darwin_x86_64.zip"
    sha256 "aa13e381d1fa8201411c264b94af98daa33c3aa8a2c3114d7c3308eccef8af1a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.26/datree-cli_0.14.26_Linux_x86_64.zip"
    sha256 "73be6942ca2b9f30e681960899918fedff55d71172150e5ec5fff089ce2b9426"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.26/datree-cli_0.14.26_Linux_arm64.zip"
    sha256 "91c60fcf3a4cf9a2c0851f9ceebc850e1eb99643b66c929ec7814127892f4a37"
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
