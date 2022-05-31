# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.35"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.35/datree-cli_1.4.35_Darwin_x86_64.zip"
    sha256 "1334fbc2ebb5360e94a8791a82f5e7116550e775496b3a9cd645387b648de0e3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.35/datree-cli_1.4.35_Darwin_arm64.zip"
    sha256 "a6a3a9020a90fb62589c398dcd61b1407a77687a1c5c6e5d6f00ff8598d952e8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.35/datree-cli_1.4.35_Linux_x86_64.zip"
    sha256 "52c9216181f6e57968505c24e9ac0e582fe57f4322f5b62928843f61e1e0e60a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.35/datree-cli_1.4.35_Linux_arm64.zip"
    sha256 "704d89876ea143db8288c128ada60e76ede86c519ade7c4b42ea945021bf63e7"
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
