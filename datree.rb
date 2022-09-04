# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.14"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.14/datree-cli_1.6.14_Darwin_x86_64.zip"
    sha256 "45360263626e59711017c55069f9db8a981accd7d40b816557219749e259cb0c"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.14/datree-cli_1.6.14_Darwin_arm64.zip"
    sha256 "44bf5c964abe03742c60cd39e7ed663f482346dde0d70b7ca00fad6353769a21"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.14/datree-cli_1.6.14_Linux_x86_64.zip"
    sha256 "38ed530ce96a2bf83a20ec02a91fa52f347acfd8f7cb3e1f54d4967e33b7e316"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.14/datree-cli_1.6.14_Linux_arm64.zip"
    sha256 "945cd1640886451c5b6e02838a688b1296f3b9a1ce4283b8b941cf6b272a5861"
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
