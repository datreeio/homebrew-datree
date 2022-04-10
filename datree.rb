# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.0/datree-cli_1.2.0_Darwin_x86_64.zip"
    sha256 "27c68d65adb712008e9e69fe6b622c78e93c0d32db95993da12e6c4b3033ac80"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.0/datree-cli_1.2.0_Darwin_arm64.zip"
    sha256 "ea387488e7c3040fe60f47435034f1b9010997e401dbb3527f9a8a60e50f3ec5"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.0/datree-cli_1.2.0_Linux_x86_64.zip"
    sha256 "a3c78da1ca4269742b7b026c98bdc2f06ea4a2d8f23bfc62bb4e9df68d370f58"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.0/datree-cli_1.2.0_Linux_arm64.zip"
    sha256 "f2dff8a59e2a755405cbd6be369991070005ae253a5d2bce448202f5173226e1"
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
