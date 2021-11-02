# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.33"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.33/datree-cli_0.14.33_Darwin_x86_64.zip"
    sha256 "f7448ab6de131c74465bd3818c98929bddb189341d6b3c101627caccca86131a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.33/datree-cli_0.14.33_Linux_x86_64.zip"
    sha256 "7fc5346aeb467d0fa0d2f5cd2eb750b07a07b07d083f296950da1f4792213739"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.33/datree-cli_0.14.33_Linux_arm64.zip"
    sha256 "8edc4f8ee312d27a4f7bff9d0c2028bc7c914b5c8fcfb32958af06a4ac6276d6"
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
