# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.6/datree-cli_1.1.6_Darwin_x86_64.zip"
    sha256 "477faf3a2690a0ff3dbb598eb9270744a37af9a6c6597d81fbe235bce87af6ec"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.6/datree-cli_1.1.6_Darwin_arm64.zip"
    sha256 "a5e76e9ec10b30e5c1bc99c15955b8c6945b26314d5c2825d5cc52f32d02d8ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.6/datree-cli_1.1.6_Linux_x86_64.zip"
    sha256 "77d79edf5186ff3a248951105c0f5d0e7164db297d10cb0f89611274aa4311d1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.6/datree-cli_1.1.6_Linux_arm64.zip"
    sha256 "630cadd30ff6945bcae0fb5ac7fc9d236fb28adb801146b6ecddada9a0e3e052"
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
