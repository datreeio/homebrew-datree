# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.52"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.52/datree-cli_0.15.52_Darwin_x86_64.zip"
    sha256 "75a1273f8ab49d88c9c1ed6ddf2cf34abb0372d1ae8e8d2899d3552aa1d5e8d9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.52/datree-cli_0.15.52_Darwin_arm64.zip"
    sha256 "9885a8b1c0743b62434c23246a6c3fa95d3976f2d0e454a0368fe1a305115203"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.52/datree-cli_0.15.52_Linux_x86_64.zip"
    sha256 "b2cee63e5396eeb55d788a6c2407cd00eed1db80ceab79b70c1346993703e67b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.52/datree-cli_0.15.52_Linux_arm64.zip"
    sha256 "e2665c7b18c50eac385a979dd90318213e9ef442bbf2ce087b71ae550e46c609"
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
      tput init
    EOS
  end
end
