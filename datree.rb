# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.17"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.17/datree-cli_1.4.17_Darwin_x86_64.zip"
    sha256 "a5e2871064d4701e17ed546823725f96740cb6735698f56f653d0e1dcfbb886b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.17/datree-cli_1.4.17_Darwin_arm64.zip"
    sha256 "78a8b2cf06f55f05fbe33514d14acc5ac30cbd4d052987a5bce3248422997258"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.17/datree-cli_1.4.17_Linux_x86_64.zip"
    sha256 "3c79dfbaf7af020e54b6bae2c4b4b8932df41390647d721243f73a000bd4208d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.17/datree-cli_1.4.17_Linux_arm64.zip"
    sha256 "7d777077913bc98ce55306916e4e355f6801d6b3b42551107cfe183267a528c9"
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
