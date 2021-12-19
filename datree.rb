# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.85"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.85/datree-cli_0.14.85_Darwin_x86_64.zip"
    sha256 "151bd9cf68c4e3546c09215fce9ea0c30d9621105eb5c930edadd655286bcfad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.85/datree-cli_0.14.85_Linux_x86_64.zip"
    sha256 "dd3b5069adce0141d174e9c23c891dd6729a531203cccc1e9b42d1108fec8983"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.85/datree-cli_0.14.85_Linux_arm64.zip"
    sha256 "0c2263975c33595327ccc8c43f4eb4123a12bf5398c0f8f3fb421f0289609752"
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
