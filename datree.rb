# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.30"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.30/datree-cli_1.5.30_Darwin_x86_64.zip"
    sha256 "9f29bc4b4d3c207e9158748ad329db3d61e3edc05353b8b74f0be8b21697a5bf"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.30/datree-cli_1.5.30_Darwin_arm64.zip"
    sha256 "e31d9f87b07e9859bdbe826ded0b2775687e5d220983f11032680288e439d096"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.30/datree-cli_1.5.30_Linux_x86_64.zip"
    sha256 "70ea2dac45609cfc0ee63f40de6c076a55f334f1dd6b6412071635fb1b0c46e2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.30/datree-cli_1.5.30_Linux_arm64.zip"
    sha256 "716ed89e5288a05b9d8fd7927afe33f6873f607ca71e062b5e6254e47206eb32"
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
