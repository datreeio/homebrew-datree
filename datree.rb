# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.5"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Darwin_x86_64.zip"
    sha256 "f24759b7dd414e4b883511f89852dd90f8f8e65c9c670437a520d9463e97c18e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Darwin_arm64.zip"
    sha256 "1cdf7ecde2e0b54bf88de34200c12e76fd4957a9d6da9d5971f8d06e49dacb07"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Linux_x86_64.zip"
    sha256 "fd86d75ce5ec5fc9379fc95151154d2fb949e09bc93c67a3caa2adb049085347"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.5/datree-cli_1.1.5_Linux_arm64.zip"
    sha256 "b95b9bba8746307fcdaf47e7249f653a7c9045df77618e72dd7f0b9f0486452a"
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
