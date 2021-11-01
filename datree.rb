# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.29"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.29/datree-cli_0.14.29_Darwin_x86_64.zip"
    sha256 "bc57b2bd037bbcf5063f1c6d8677d6270a7c39473ca1f065877e32c1b198accf"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.29/datree-cli_0.14.29_Linux_x86_64.zip"
    sha256 "a4b4bef081b3f3ea5d84f457c5e74cbf8262548452456e8d660f3ffbb1cb7730"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.29/datree-cli_0.14.29_Linux_arm64.zip"
    sha256 "c1a4ca49730f5c8037d3807b59d52d3f54527c97143c4ac172f8ba234dd60e4e"
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
