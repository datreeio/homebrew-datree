# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.33"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.33/datree-cli_1.4.33_Darwin_x86_64.zip"
    sha256 "3f7edd7b33bd12f4cfe910a097d773195cb1a74819b8c9d44df996bdb6165a53"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.33/datree-cli_1.4.33_Darwin_arm64.zip"
    sha256 "2de6b9e1c5c6674d9bebf18c4a3f7be330150f1e1fcd70fbe257b2d00edb52aa"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.33/datree-cli_1.4.33_Linux_x86_64.zip"
    sha256 "8f57744220197a51ca641c96602d360837467056a00d90f11a3258da3ca6340e"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.33/datree-cli_1.4.33_Linux_arm64.zip"
    sha256 "b19cdb8da4b7dd36265e249a880b7cf8ac1823acce40e6f1ff9e713f9c5068b7"
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
