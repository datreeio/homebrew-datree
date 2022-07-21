# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.37"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.37/datree-cli_1.5.37_Darwin_x86_64.zip"
    sha256 "66b19681206a0cb9405905c6277b63cd2238cf871f508b64bea1ad0c88412363"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.37/datree-cli_1.5.37_Darwin_arm64.zip"
    sha256 "41f653fbfdd1fda0a7eef4c8e161c7e52d7d739165457b683671bce1730a0a7a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.37/datree-cli_1.5.37_Linux_x86_64.zip"
    sha256 "9a34ed1c4953621f249b741441a8ebcdddeeeb7094cc5150bf339e7b68777cd8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.37/datree-cli_1.5.37_Linux_arm64.zip"
    sha256 "b53da0bda50b56d86e13bbc99d623077a5dd0f696e6c1b1d31aff72586a76c72"
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
