# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Darwin_x86_64.zip"
    sha256 "5f619040ef6435985597547e412892c4c18cf057db03a015b63f2775b1c4a06a"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Darwin_arm64.zip"
    sha256 "66f8e52a00079a7b8363f738d3d940065ba2a688d6d7e382cc1fab4afbe86248"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Linux_x86_64.zip"
    sha256 "408683962bb13dcf68b314e8372f4078a7013d549412db145ef29e72f939fba8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Linux_arm64.zip"
    sha256 "db8b3f71b2a6ca5226f8361dc38ca9426589e4b3369492f9ad098c0ecbc05cf3"
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
