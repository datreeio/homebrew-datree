# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.4/datree-cli_0.13.4_Darwin_x86_64.zip"
    sha256 "a924b30a01c731a14b480ec2acf09464fc679b3ae945d5ce8b270b1010d004a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.4/datree-cli_0.13.4_Linux_x86_64.zip"
    sha256 "872e8b9ce015f41d24925d42dc262f4cbdf1f1b2bc28590b9032d3ec340c2956"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.4/datree-cli_0.13.4_Linux_arm64.zip"
    sha256 "235a2f2ef16f58a63964f72e9e8dd66f33678d8d557d629309f9ddd10d079b3b"
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
