# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.16"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.16/datree-cli_0.14.16_Darwin_x86_64.zip"
    sha256 "ec19909ce205fe14d92b63d2d957725963bbff4151822ff4b38f9b452649aef3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.16/datree-cli_0.14.16_Linux_x86_64.zip"
    sha256 "6948c322311f220250779a4ed7390fd7fd2c3b036b14226be1e1823f88bb4fb6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.16/datree-cli_0.14.16_Linux_arm64.zip"
    sha256 "261dbeb40172bbc0e57d74cfcdbfb70bed8ab3d35e9e727a01fc904f08fb2a75"
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
