# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.0"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.0/datree-cli_0.15.0_Darwin_x86_64.zip"
    sha256 "b03bf2092267d58b2831dba81b2e641fd23453e62e1f5646e7e06c04aa774cda"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.0/datree-cli_0.15.0_Linux_x86_64.zip"
    sha256 "91e26fd9d423f2554462305d3e6049065ee2d0f392d6be776c672799496e4b47"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.0/datree-cli_0.15.0_Linux_arm64.zip"
    sha256 "d4d5e1f5f8830242c5a7f134ed50e8c25763b2a247068d3e8c89bcdff147cb6a"
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
