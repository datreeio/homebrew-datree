# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.13"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.13/datree-cli_1.4.13_Darwin_x86_64.zip"
    sha256 "3e21c40ffdae68e7463b47abb89c367f33c464383055c7e54d87b8486acb8831"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.13/datree-cli_1.4.13_Darwin_arm64.zip"
    sha256 "555482be1a3ab33db4db9f20592eab73a3e267fead0091b1ca95c6b5ed97eb03"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.13/datree-cli_1.4.13_Linux_x86_64.zip"
    sha256 "b5137007e6af7bd491a6104628ed907fea57bb9e8dff3b5c1daaab278e80d48f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.13/datree-cli_1.4.13_Linux_arm64.zip"
    sha256 "df8147528e53428f2a28e9cfea275c809ee74b340044c995e54cf2fb975b580b"
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
