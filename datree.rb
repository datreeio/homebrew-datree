# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.6/datree-cli_0.14.6_Darwin_x86_64.zip"
    sha256 "bbc374e74333e982c5c1de9afe26725242059aa99aed481e86e4a182fcc86877"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.6/datree-cli_0.14.6_Linux_x86_64.zip"
    sha256 "c51d5ec9e7277f8f49686b9d24fb82fb1476aea1ba16b85ab4c8bf5f71be051b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.6/datree-cli_0.14.6_Linux_arm64.zip"
    sha256 "b2f0d7b12671ac56f672d055ea36d294fd1426df674669f95aefce4b3b034927"
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
