# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.12"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.12/datree-cli_1.6.12_Darwin_x86_64.zip"
    sha256 "4830f3e2ac56c150b36cf6998f066f4ee1ba684da8239cb26965494fc91859ff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.12/datree-cli_1.6.12_Darwin_arm64.zip"
    sha256 "36b693322d3c0161a53b06ae3c725bbaa87f0b7a3ad600aa4e17f57a241632c3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.12/datree-cli_1.6.12_Linux_x86_64.zip"
    sha256 "6b0eeb2ca18bdfdd4a754de8812c2a2a4fd602cc4b7df4f150e007619fec33cd"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.12/datree-cli_1.6.12_Linux_arm64.zip"
    sha256 "df77d10c4b25e4eb9f4dd09f0693af87b45e1b5acade6765c8f5ac412846c92e"
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
