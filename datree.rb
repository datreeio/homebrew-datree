# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.90"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.90/datree-cli_0.14.90_Darwin_x86_64.zip"
    sha256 "0f5bdc5e8e14f0fb593491ad6a2e6744a59509c9ac994411c25793fc4c109cc1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.90/datree-cli_0.14.90_Linux_x86_64.zip"
    sha256 "991226e8d2eb593b06e50112cf6582b477a7a36cededb61533e592d3b121ecdb"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.90/datree-cli_0.14.90_Linux_arm64.zip"
    sha256 "99d97bf87234e0940c3fd9a65ac8e311e0a32d30bc78478359afa024ef03ad5a"
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
