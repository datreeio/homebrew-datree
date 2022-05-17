# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.22"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.22/datree-cli_1.4.22_Darwin_x86_64.zip"
    sha256 "252fd4d24504f521b1a8317a9f0d1e11b49350f566791e4f534f451be5c14c66"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.22/datree-cli_1.4.22_Darwin_arm64.zip"
    sha256 "7327985dfb1f81fd767bc77160d1643f33c3395fb90c0e1f8fc8263d624323c0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.22/datree-cli_1.4.22_Linux_x86_64.zip"
    sha256 "718daeeea101eeaba4e1a380947f36d29d63b883c5d59aa1c81685dea6cb003c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.22/datree-cli_1.4.22_Linux_arm64.zip"
    sha256 "25ef8613482e166fa561ab522e52f79bf85b15fed9e7fd5cffcf0badc41c2633"
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
