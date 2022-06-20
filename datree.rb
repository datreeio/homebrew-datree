# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.16"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.16/datree-cli_1.5.16_Darwin_x86_64.zip"
    sha256 "b3ed690319fbbdc130f84be294fc6b6f78e10c98188b2c2bba1303b86eb2093e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.16/datree-cli_1.5.16_Darwin_arm64.zip"
    sha256 "a2cad7d115715cac250bebcec4311234e814360cf6c3d46ce45eac35a5760785"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.16/datree-cli_1.5.16_Linux_x86_64.zip"
    sha256 "b801b4891a2ab5847f1b89df5ee08b2c8eae9b619d23d50445e5c01ffaf955ed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.16/datree-cli_1.5.16_Linux_arm64.zip"
    sha256 "264685959246de810389f3813b006775b456a171df52fe799b717f6c1c759135"
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
