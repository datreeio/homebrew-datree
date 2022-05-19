# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.26"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.26/datree-cli_1.4.26_Darwin_x86_64.zip"
    sha256 "ad7f641155156b8090401afa9e3bc0e65043bcb94b9704ee603f6495aaa42141"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.26/datree-cli_1.4.26_Darwin_arm64.zip"
    sha256 "0302373d0bb546e265b947b63c138270d5451d279fb98d30d6dc0e2b2d9c8b79"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.26/datree-cli_1.4.26_Linux_x86_64.zip"
    sha256 "1b7d2e29c82443ea4814c9e06385eec204e6b36653403138b8fb67ff05dc7a7d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.26/datree-cli_1.4.26_Linux_arm64.zip"
    sha256 "2f0735ceeb6ed3e651a3422e55e783f6587aed0377407e2c9e45a8259665f814"
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
