# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.21"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.21/datree-cli_0.15.21_Darwin_x86_64.zip"
    sha256 "e691db55cb87f8d239841c5edacc6630a93ed43100b085cbeaf99e9092b89a28"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.21/datree-cli_0.15.21_Darwin_arm64.zip"
    sha256 "9dd31f94c554d5ef3a276b83b01d65c46927846194d8653cfca65ed9b3dd0807"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.21/datree-cli_0.15.21_Linux_x86_64.zip"
    sha256 "ceaa1b6e9d06ae41589bdbac3c8886e3118165dca2d531a06e8768f3e81aceed"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.21/datree-cli_0.15.21_Linux_arm64.zip"
    sha256 "c420fc58f0a8a5eef37ebc730d8b1f6675e9c1b3ca5716c09f1bb4a339029b70"
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
