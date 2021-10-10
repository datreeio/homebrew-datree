# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.13.7"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.13.7/datree-cli_0.13.7_Darwin_x86_64.zip"
    sha256 "740ebe8561b67a801d8b406dedaac907262f3366cb312ae699bcb13506c4ba0f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.13.7/datree-cli_0.13.7_Linux_x86_64.zip"
    sha256 "9f76fe8630c22b5e3fd3bfaac6d0cd451053be56972bd5fd9d42bd03f9b6513d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.13.7/datree-cli_0.13.7_Linux_arm64.zip"
    sha256 "38efb9225005c95102c64d623ccec0d19bbc2d2144a282d7b55e350d7aaface6"
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
