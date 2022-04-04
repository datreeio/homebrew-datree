# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.20"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.20/datree-cli_1.1.20_Darwin_x86_64.zip"
    sha256 "06f1dd0d9a5a766b1e008ff50d2b560c208e1ba7ca133254eab90f632a1e33a5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.20/datree-cli_1.1.20_Darwin_arm64.zip"
    sha256 "483c3df742e41b56b394d1055aec0f8e1a11db490f74a5ce36fc02791fb7edbc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.20/datree-cli_1.1.20_Linux_x86_64.zip"
    sha256 "6bb544b5d9c0dc4c4e20e2f2908e6f57a2d83ec3bbabe59a6c8c1bd28c652860"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.20/datree-cli_1.1.20_Linux_arm64.zip"
    sha256 "167a8d7c98ab3d311c670231e2010da1454d5d422e80c7d67db770d758435121"
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
