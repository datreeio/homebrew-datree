# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.51"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.51/datree-cli_0.15.51_Darwin_x86_64.zip"
    sha256 "384cbe9ef346da32b22133251c4317ee6266bfda2ab6a8536afa5784a6ff8e15"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.51/datree-cli_0.15.51_Darwin_arm64.zip"
    sha256 "318533ca4310fb296ec26b53af84d7a9df2504b8c47e1ed9591457d0ba60643f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.51/datree-cli_0.15.51_Linux_x86_64.zip"
    sha256 "eb9f600358a0ad92cca1cac4f0203ab03c343492fe5c71c39e015efc2e327036"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.51/datree-cli_0.15.51_Linux_arm64.zip"
    sha256 "9832ff7285b1f88da652ba165f71a07d286ec04a6579e5479bf60efa559ae07e"
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
      tput init
    EOS
  end
end
