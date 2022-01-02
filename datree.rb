# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.91"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.91/datree-cli_0.14.91_Darwin_x86_64.zip"
    sha256 "87876c1a9d2446c5766e8b60ce2c17d77bf70b93d85fd6fbeeab8e06b94cdfff"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.91/datree-cli_0.14.91_Linux_x86_64.zip"
    sha256 "483220aee9eeaa7ff7d734c5bebaa6322987c81a44b852b1aede5b9716f252d0"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.91/datree-cli_0.14.91_Linux_arm64.zip"
    sha256 "022dfa2cefcee6ddd0186aac724abd941bb655cba2178bd2d87998a9475df3d8"
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
