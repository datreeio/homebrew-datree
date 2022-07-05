# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.25"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.25/datree-cli_1.5.25_Darwin_x86_64.zip"
    sha256 "53a69882e2a093fe61084c299b216e2d3ff528014e894df91d977a5701c7112c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.25/datree-cli_1.5.25_Darwin_arm64.zip"
    sha256 "48040c3b331cf527923f06a733201f2c04dd3aaebf8bbc4f9a9480fafd156ec5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.25/datree-cli_1.5.25_Linux_x86_64.zip"
    sha256 "7027d81b4d13986724108da07ededd2c9ed8bc58ac2a1cbd3af4ade6d2abed93"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.25/datree-cli_1.5.25_Linux_arm64.zip"
    sha256 "4393088a8d22b94a620cd73b91cd6c40e2cc63abd6c80b82126d94ab308ef638"
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
