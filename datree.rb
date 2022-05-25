# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.30"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.30/datree-cli_1.4.30_Darwin_x86_64.zip"
    sha256 "edd1a63f314d678ea054785a3777f23b9ab44d00bc8d4efb3a31dbd061468596"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.30/datree-cli_1.4.30_Darwin_arm64.zip"
    sha256 "86a7469f918e8613380cca2be561024555a9390ec5e290db2a6b3214d4e4d158"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.30/datree-cli_1.4.30_Linux_x86_64.zip"
    sha256 "5e0760d975f650015065d6103902c87b591c3b2a1b63d022aed6830ea0b49bb6"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.30/datree-cli_1.4.30_Linux_arm64.zip"
    sha256 "f3872998e64a6ae3f13ef5b50d4a536f3a932865a4abd5d658593ecb136fd09a"
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
