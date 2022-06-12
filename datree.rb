# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.9"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.9/datree-cli_1.5.9_Darwin_x86_64.zip"
    sha256 "1ed190af8fa5a8452eab80717f72b32b080d55de0116cf6c6ee43428ab89f966"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.9/datree-cli_1.5.9_Darwin_arm64.zip"
    sha256 "2342f73b97ad9b0779b1bbaf2612e15578e6b2a7d9039b6b64f8c58d765e9de4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.9/datree-cli_1.5.9_Linux_x86_64.zip"
    sha256 "8a5f913648779b0fda2ea9b21bf2da4dc2af59d9fb5d11de9c939ab504753155"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.9/datree-cli_1.5.9_Linux_arm64.zip"
    sha256 "0da86628db53e97eb731fde6636abcf001e5c62e654bf96c813474887a376410"
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
       Using Kustomize? => https://hub.datree.io/kustomize-support
    EOS
  end
end
