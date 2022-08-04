# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.6.6"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.6/datree-cli_1.6.6_Darwin_x86_64.zip"
    sha256 "ceb36aa7b75f4eb3a3711637e19a1a202f07e2378b49f3bfb206daeadfb5b0fc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.6.6/datree-cli_1.6.6_Darwin_arm64.zip"
    sha256 "6ab635a055e084a14bffd7d86c589813657518d831631385ea2bbf158660d16f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.6.6/datree-cli_1.6.6_Linux_x86_64.zip"
    sha256 "93bcab1824b1e64eda54544dec84b0d2246e05cacbf9c164b4e9386d68ecee33"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.6.6/datree-cli_1.6.6_Linux_arm64.zip"
    sha256 "e7cd0c483250fd487b1d71e92994c4a8330793551c22f805f1360fea0c978c95"
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
