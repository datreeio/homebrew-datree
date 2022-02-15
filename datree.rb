# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.16"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.16/datree-cli_0.15.16_Darwin_x86_64.zip"
    sha256 "e1caa5a4a723e457315ddbbd455844f85698fdc162bf3381c2f3135e844d9268"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.16/datree-cli_0.15.16_Darwin_arm64.zip"
    sha256 "4523d8bbe9472b244f3116dde0af6cef92a36ce3c3e9717107a13582f3696d3f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.16/datree-cli_0.15.16_Linux_x86_64.zip"
    sha256 "6f64c9509d1dcb416d93113dae083151edd914e7cb6fa1de33965301fbe678ac"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.16/datree-cli_0.15.16_Linux_arm64.zip"
    sha256 "6dbba9a2b93e58f5126d916eb63ce12ab5374b7864ca950d1a53fb25e69fa10b"
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
