# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.62"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.62/datree-cli_0.14.62_Darwin_x86_64.zip"
    sha256 "9b2f867dacd7f40f412d6e7360b945a9ebe977bfd14ee514aecbdd90f25c1c7d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.62/datree-cli_0.14.62_Linux_x86_64.zip"
    sha256 "e32b23a8d2e3d3d77afa1628616f40420376b72bb363060848333269f5edafb2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.62/datree-cli_0.14.62_Linux_arm64.zip"
    sha256 "6195dd8e8144b02ad393932be573de2f1cad0984432c28f4f84726432d0a503f"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
