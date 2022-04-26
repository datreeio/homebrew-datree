# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.4"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.4/datree-cli_1.3.4_Darwin_x86_64.zip"
    sha256 "cc71ba4084d7117d812177186ebf72686ea0cfec960b1303d9c9ef141a5f652b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.4/datree-cli_1.3.4_Darwin_arm64.zip"
    sha256 "ee64245d7f02ddabe03feddbf6d266db90cdc8e8442698a0ccc9aac179ba72f1"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.4/datree-cli_1.3.4_Linux_x86_64.zip"
    sha256 "7c1c2fb16ddeb52f75d99482ecb98c4ccf20bc4ea14a4f015c7dcbb163f46bf1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.4/datree-cli_1.3.4_Linux_arm64.zip"
    sha256 "3bfd78c1099c20bbd271d6c1d64ac0e5d8bc1b34c94f3eede2067127d081c10c"
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
