# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.10/datree-cli_1.2.10_Darwin_x86_64.zip"
    sha256 "c2016cb324e607798277df35291dfa6995a7b6c6884242dd1543297746cdd144"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.10/datree-cli_1.2.10_Darwin_arm64.zip"
    sha256 "fe3020a512f9efb0c0ce4c022ac9b1277023f2c48ac2767eb3c7f6a4444b4060"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.10/datree-cli_1.2.10_Linux_x86_64.zip"
    sha256 "2583b396e485482de0e53438bfd0a7b905ecb1398952434f668b142e345a0030"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.10/datree-cli_1.2.10_Linux_arm64.zip"
    sha256 "9a98fd044843ba25d3096f4c74e346e4ac5620ea804941ca6b49517f84cdc452"
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
