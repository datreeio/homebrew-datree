# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.2"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.2/datree-cli_0.13.2_Darwin_x86_64.zip"
    sha256 "74fd03df3cdf74abc22765cce8bf9873d8e346c1f6d03391ac6d180495bac433"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.2/datree-cli_0.13.2_Linux_x86_64.zip"
    sha256 "19c5d78d3924dbdeaf32cd22705a14de5adba091518628c18cafcf7c114054c3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.2/datree-cli_0.13.2_Linux_arm64.zip"
    sha256 "78d7646fab7a039d3191b521d8fb13164583bc0486fbc1be0fba387fd85bc658"
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
