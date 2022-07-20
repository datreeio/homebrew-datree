# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.35"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.35/datree-cli_1.5.35_Darwin_x86_64.zip"
    sha256 "80d4a8176bedc65cc4eafcdeafe24abe686fcb56ab222fe96e4a8ca60e1eeb79"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.35/datree-cli_1.5.35_Darwin_arm64.zip"
    sha256 "69b05bf1575facd7eab4442b7679772de12d9f5249cbb7d5fc96841aad0e07c8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.35/datree-cli_1.5.35_Linux_x86_64.zip"
    sha256 "ebf3b3f987883d2f745dd3bef81fdc6a3c7aff85c37c738b46c00b65d8aad516"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.35/datree-cli_1.5.35_Linux_arm64.zip"
    sha256 "00051d4cf162d521f15ad4ca63f39e9802d3f411d80cc5cd468f726fbc1580ba"
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
