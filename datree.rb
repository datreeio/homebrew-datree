# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.49"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.49/datree-cli_0.14.49_Darwin_x86_64.zip"
    sha256 "04555a6fc9071622dda636b1c6577d751000e658b5d8e69abdae6c91bcd2f44e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.49/datree-cli_0.14.49_Linux_x86_64.zip"
    sha256 "ea1c62f44b2dbbfa9fc66dd6577851717bc95561e9b2c5795a36245278bcd04b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.49/datree-cli_0.14.49_Linux_arm64.zip"
    sha256 "ca4809c8b63b5ee7537579697b29b2879082d2a9abc6f0d8566e9cf552b6605a"
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
