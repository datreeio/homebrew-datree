# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.17"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.17/datree-cli_0.14.17_Darwin_x86_64.zip"
    sha256 "a30c4aa6b004ccbb995ad020bd119ad1396489f0a8e1b2a724f721f2d424520c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.17/datree-cli_0.14.17_Linux_x86_64.zip"
    sha256 "b7ff8892617197ccec8f913057b5d30827bffd272e225c4553eb700a008a9e09"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.17/datree-cli_0.14.17_Linux_arm64.zip"
    sha256 "961856a5456ce491a7227ae3cbbc97617b70ac5d9c6f3a5f3defe1e55285f720"
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
