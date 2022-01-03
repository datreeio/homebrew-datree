# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.92"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Darwin_x86_64.zip"
    sha256 "072f59c82f5cc6672cb16e933e8c2bbb83dc4b5b59a470f63b850311f278f72e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Linux_x86_64.zip"
    sha256 "e7832ec34644cd5d8de06b9b3f303b91247bdb895636c012fd1ee51186e63ce9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Linux_arm64.zip"
    sha256 "a035d9657aa698eabd5556da5d1eb0eb6602878b1a70c6ac9729b750f45a5b71"
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
