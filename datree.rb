# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.2/datree-cli_1.5.2_Darwin_x86_64.zip"
    sha256 "72779dc51b1b6223a8ed7ead01939aa507e28b93c9721205c94a7d8f75596ef7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.2/datree-cli_1.5.2_Darwin_arm64.zip"
    sha256 "4558274b893c6d95110ffd9fd806afcdedc251bd17b5edee50e384945daa093a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.2/datree-cli_1.5.2_Linux_x86_64.zip"
    sha256 "15e8389fb7bd4b37dcca7de1fc6557b54fb0d28bb3a3611e531aab655d8c138b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.2/datree-cli_1.5.2_Linux_arm64.zip"
    sha256 "5e343251a0c2593037c6f3a4a5b601cbf51429a79be3092d49897b69456cd316"
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
