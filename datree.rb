# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.92"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Darwin_x86_64.zip"
    sha256 "43db55bd810268d8c61549be16f822ebcbb425745fbfe127f204825cdc1d6526"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Linux_x86_64.zip"
    sha256 "9598322ff06a6f4789f87f35a503a13f0f71e38a31a7e3db304443017b8c4e45"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Linux_arm64.zip"
    sha256 "e85a86eb23430537e7fa838a87334f6b96d41f9d3f952c8201bdbed6a81f417a"
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
