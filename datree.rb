# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.47"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.47/datree-cli_0.14.47_Darwin_x86_64.zip"
    sha256 "278a3c9671a28d3590348c017d9fac03207616f4b3bb9218986ce6408c088316"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.47/datree-cli_0.14.47_Linux_x86_64.zip"
    sha256 "1d332b5c031dde3578ec0f3aac3817656a6fc765d4a75eee49f7ed6ec00d21aa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.47/datree-cli_0.14.47_Linux_arm64.zip"
    sha256 "329d2765a4ec7403ef1019d404ab62bee4cf476fc09b8e561540037ab41b6536"
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
