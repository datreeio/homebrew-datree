# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.0/datree-cli_0.13.0_Darwin_x86_64.zip"
    sha256 "2d2a220bfd8aac15a988d72399739607203723597e2d1f4c997129af3abaae09"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.0/datree-cli_0.13.0_Linux_x86_64.zip"
    sha256 "63fc652676c6bd137471d6d7ef26d6c16611c47b444b513faee1cecb5358ef56"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.0/datree-cli_0.13.0_Linux_arm64.zip"
    sha256 "03a8320b2615dffb9659e273c7ea01ccc1202ab08f4e15a6c934bff856373a50"
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
