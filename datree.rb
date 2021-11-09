# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.36"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.36/datree-cli_0.14.36_Darwin_x86_64.zip"
    sha256 "3cc3d071a3ed77965a12e796097c722123d478f1ba6f6137ae20c48ef35b0d0b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.36/datree-cli_0.14.36_Linux_x86_64.zip"
    sha256 "5e8bfc599f77f9e965078b6a5e05b9b3fd0aee582705f268290cf07c2282f9ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.36/datree-cli_0.14.36_Linux_arm64.zip"
    sha256 "93cf3ed5e8b52da033f31ba456f1612a66515f3723ec5bc6f6953005bb7018aa"
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
