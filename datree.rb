# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.93"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.93/datree-cli_0.14.93_Darwin_x86_64.zip"
    sha256 "cac8f578d0967f6da08b5708f2f57b98562dfc2c9bde3062a2753b9f13a0752f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.93/datree-cli_0.14.93_Linux_x86_64.zip"
    sha256 "c232f8eccce9b22b56377f217f4d47c12316fbc92c5cf52683ae5199da6e4310"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.93/datree-cli_0.14.93_Linux_arm64.zip"
    sha256 "7f9c74a412317acde3b97c1401e79b1400a81f1f10dc1421bd318bab1eb650f8"
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
