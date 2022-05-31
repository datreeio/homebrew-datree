# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.37"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.37/datree-cli_1.4.37_Darwin_x86_64.zip"
    sha256 "16eba8d8c24c8bccf3145e8bd2247dadb7112ffe7cc5a0846e2d91917a092b13"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.37/datree-cli_1.4.37_Darwin_arm64.zip"
    sha256 "c989aad52a2bf5b19fa8ec89c3a614de86304b59f6fc4d5854184f9905db702f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.37/datree-cli_1.4.37_Linux_x86_64.zip"
    sha256 "993307ff458d82faa5ed803e493cec0bb7b3930910002fe23de0b1c9d191f930"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.37/datree-cli_1.4.37_Linux_arm64.zip"
    sha256 "8c275208b242a151e809df6e560f19e8634194a1e579e66d2432d1a774da15b3"
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
