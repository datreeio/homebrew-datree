# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.19"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.19/datree-cli_1.4.19_Darwin_x86_64.zip"
    sha256 "a407c6b964cfca983ab7ec12a5672f2d5dd0380be9d4d8122e2521dd9b08fad3"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.19/datree-cli_1.4.19_Darwin_arm64.zip"
    sha256 "13495e215e74764ca588a3d8fa09edb127634588db41ee2b15bb812b44ac22cd"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.19/datree-cli_1.4.19_Linux_x86_64.zip"
    sha256 "c5758cc3ee498a72820cca1b342a3766f879434a4759f8fb1190f61a592c5d55"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.19/datree-cli_1.4.19_Linux_arm64.zip"
    sha256 "cc4678fb22c9ef4d877c3fc6d3789b26acca1bb2140cdbb756d9eae82f73ab56"
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
