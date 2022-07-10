# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.29"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.29/datree-cli_1.5.29_Darwin_x86_64.zip"
    sha256 "b878314e9661bed8f3376345bd80271186c9a6e1bc53217bb1ebd41d85160153"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.29/datree-cli_1.5.29_Darwin_arm64.zip"
    sha256 "1658e8b7796364d3ca744e0c1097538cd0f75dfcad42f1b8d8f41833201a66b8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.29/datree-cli_1.5.29_Linux_x86_64.zip"
    sha256 "fcd0d301dd63e60a5fa5f22cf03fc93d24e438b5fd50f298d83756c00f230e51"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.29/datree-cli_1.5.29_Linux_arm64.zip"
    sha256 "417025e693586d17d42e42753434ff74a11bfc4f860acac003d5a157955dc0a5"
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
