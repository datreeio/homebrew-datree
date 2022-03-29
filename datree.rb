# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.2/datree-cli_1.1.2_Darwin_x86_64.zip"
    sha256 "3c344c8df58444dcaa5b747c5b970d2bcc73f281535ca6b3f15fffb1ef7e1e60"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.2/datree-cli_1.1.2_Darwin_arm64.zip"
    sha256 "22d0747995984ff5b22c1dcc09a3fc9e32edbdc64501827d8f953e93f8d4d952"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.2/datree-cli_1.1.2_Linux_x86_64.zip"
    sha256 "4822ea83c3ad9a87af5af15d6fcd5ffcebc534f5ddf0f8f7a3f6a624fa00ec95"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.2/datree-cli_1.1.2_Linux_arm64.zip"
    sha256 "571230e9cc025e4f827cd200db9ff80f77cd4319412af4639034d9416604637d"
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
