# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Darwin_x86_64.zip"
    sha256 "9557b8828d39f78067e3d0244009a686319edff83c312bae51d0eda6803b1983"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Darwin_arm64.zip"
    sha256 "bc9232c4b771382263767e9c01526dc5baa1e534fac1b8cff1b4e02f80928681"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Linux_x86_64.zip"
    sha256 "988e16c2d30e7e35235fb52ff19ae39108964c3609fb67862387c67a4bdac7f1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Linux_arm64.zip"
    sha256 "0a3e143337832faaf72e9df26e338c3abf517119e81eccfb5e6b98d2f2e09715"
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
