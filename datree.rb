# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.18"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.18/datree-cli_1.6.18_Darwin_x86_64.zip"
    sha256 "7be0781353eafaab8ce79790470cc36072afa5ef06536169ceb4c5a870d215a8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.18/datree-cli_1.6.18_Darwin_arm64.zip"
    sha256 "48c921cfb533e050ac4e0c86edd3dd0e5b97c4860a7abcba0570d6b88d321783"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.18/datree-cli_1.6.18_Linux_x86_64.zip"
    sha256 "e266e8767d38f93c6fd3e20899c25d9f1562a664ebcf4702c6bedf89cfa213f7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.18/datree-cli_1.6.18_Linux_arm64.zip"
    sha256 "3ed718b0f3276bc1533dd5a48b74ee92a61f4487978830f6abad933d823fcf74"
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
