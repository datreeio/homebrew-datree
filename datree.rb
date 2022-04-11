# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.2.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.2/datree-cli_1.2.2_Darwin_x86_64.zip"
    sha256 "1a4295f8d5cb202246f9d395bbfa4d1f2ccae40fde989f7f25e43885c2b02a40"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.2.2/datree-cli_1.2.2_Darwin_arm64.zip"
    sha256 "0f67c458816a5069ec72d1cfcddcbcb90c277562c36ebe0edc6c5c21a746f5af"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.2.2/datree-cli_1.2.2_Linux_x86_64.zip"
    sha256 "b848d89beeebf34ad2bb81ad9e864edb4cd1f7bba80661baca4a8052223907ef"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.2.2/datree-cli_1.2.2_Linux_arm64.zip"
    sha256 "4fb8ebd83fea651fa810e92d4cc62c7771f560e44257014b184643a17b355ae5"
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
