# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.0.1"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.1/datree-cli_1.0.1_Darwin_x86_64.zip"
    sha256 "66ff53c07bfc362e1ae1cd9be441cd799c21f3fdc4332147db0bd39be6503b66"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.0.1/datree-cli_1.0.1_Darwin_arm64.zip"
    sha256 "d2c26e08bc95fcef64d47d1ab67dc0555f495fef5793601dbe6dc3eb062c4c05"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.0.1/datree-cli_1.0.1_Linux_x86_64.zip"
    sha256 "f35a912be92541b7abee5d7e5ecd9194fa4f213c46b20e8a0051aa2e4529fb6e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.0.1/datree-cli_1.0.1_Linux_arm64.zip"
    sha256 "18eea31a7e852821ba9c0622c7bf2f14f13c8387227acc5c0e96081694f66b9e"
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
      tput init
    EOS
  end
end
