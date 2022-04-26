# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.5/datree-cli_1.3.5_Darwin_x86_64.zip"
    sha256 "ec347837cc2ea3f53177195a88174ecabf7d02426f2501884dd2370c6e793469"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.5/datree-cli_1.3.5_Darwin_arm64.zip"
    sha256 "00e406a3ebdc038f86bdc2113740b5b951abe52e8876ab9177acc437aaa1d45b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.5/datree-cli_1.3.5_Linux_x86_64.zip"
    sha256 "cb6e4b206506db353a1be284e47f20cf933f4decb55a9613f6c7576ccecdf954"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.5/datree-cli_1.3.5_Linux_arm64.zip"
    sha256 "fa49e895409aa54168c85c70083535c1a40ec7f72cfd738ed966650918f9ac38"
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
