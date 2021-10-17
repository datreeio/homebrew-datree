# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.4/datree-cli_0.14.4_Darwin_x86_64.zip"
    sha256 "94b538d6ee1e650a447d8d4e270deae9edfcca6e85aceef9a4b023aae59d556b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.4/datree-cli_0.14.4_Linux_x86_64.zip"
    sha256 "765ed3f2077bf511d076452c1542942c35d8c13ac7a32057f389ec18fcad2e8d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.4/datree-cli_0.14.4_Linux_arm64.zip"
    sha256 "0ce6ed658c1ebcc5c12e38bfd472c7bc70bb0d5622d25d43bd92c778d94b5c26"
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
