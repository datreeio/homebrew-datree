# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.3"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.3/datree-cli_1.5.3_Darwin_x86_64.zip"
    sha256 "3dd80e2c70ee3e24d3b380fcd4e5c0eac5be6c5205fa632a291ebdbbf64a2827"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.3/datree-cli_1.5.3_Darwin_arm64.zip"
    sha256 "cc59192aeea0e6cca6e24d5c177d1738415cdd7dc3b6fb2fe3448cb72b76f4af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.3/datree-cli_1.5.3_Linux_x86_64.zip"
    sha256 "4d948580aa7b3b9c999ad76fe3f86fe3cb61f4c6d1b4311adaa4635bcfe4475a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.3/datree-cli_1.5.3_Linux_arm64.zip"
    sha256 "cd95294e72b1dea8db6fadbce6381f2deb3a7dd5da7dd812dfb11da1e7d27a0e"
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
