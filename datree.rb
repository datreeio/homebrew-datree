# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.90"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.90/datree-cli_0.14.90_Darwin_x86_64.zip"
    sha256 "ab276410505bb0b56718bf779858f2357cc81d5d768b57099796be09233eddc6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.90/datree-cli_0.14.90_Linux_x86_64.zip"
    sha256 "9c4c54ea4d68a77261806c77540757ea6c9881b2eb8f802baaa8b3d5adbe4846"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.90/datree-cli_0.14.90_Linux_arm64.zip"
    sha256 "953ee0ac26968c01a299cdff8868fb07f0df3f910b7bada97204e5674d410c62"
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
