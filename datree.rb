# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.2/datree-cli_0.14.2_Darwin_x86_64.zip"
    sha256 "9c3b20102ad45f0cb1ca68f4e8f8085e03615281d3d422ae888909f3c11b60b0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.2/datree-cli_0.14.2_Linux_x86_64.zip"
    sha256 "146bce738e61a2d10d8cefee3151c86382aa6349b00bdf7807900831c15624e1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.2/datree-cli_0.14.2_Linux_arm64.zip"
    sha256 "9b03c8c73353a1cf5c6ad22793d44caeb6e56d77314280169eb0359953828fd5"
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
