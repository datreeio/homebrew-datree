# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.4/datree-cli_1.1.4_Darwin_x86_64.zip"
    sha256 "097f3755f5aeab8d09fc3d3ee2f187a5169cbc762afa7e9e193d8c12ecbd8cdd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.4/datree-cli_1.1.4_Darwin_arm64.zip"
    sha256 "5ea877b9cc32448f6e3213d5666ece16d70e2e651eb9643c29e1a6e2a028148b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.4/datree-cli_1.1.4_Linux_x86_64.zip"
    sha256 "3d6bc1bf415ff19ca4f9195d0a9db9e4faa55927195dc48bf092dfa832733cd7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.4/datree-cli_1.1.4_Linux_arm64.zip"
    sha256 "0ec370cae0c9c880770ea213ba77dce3266cc37de9eab5472e8a5f21967ba30e"
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
