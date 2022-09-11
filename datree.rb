# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.19"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.19/datree-cli_1.6.19_Darwin_x86_64.zip"
    sha256 "b7a73ef370d61f90fd3e231a44dd69ceea881b5a92eb7323afb7742565711a89"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.19/datree-cli_1.6.19_Darwin_arm64.zip"
    sha256 "5848fee4f79c7f9b67a6f7074d282593c0268217ebdb02c71a7222ceccad209c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.19/datree-cli_1.6.19_Linux_x86_64.zip"
    sha256 "c5425dc91c59b3b80e134ce7dca6435fdebb9ef1030878801187fdb512516fa4"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.19/datree-cli_1.6.19_Linux_arm64.zip"
    sha256 "60f56afd8cc132a3314ab6294ae391e5c81501ce50503abc45af5087513365b2"
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
