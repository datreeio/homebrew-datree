# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.20"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.20/datree-cli_1.5.20_Darwin_x86_64.zip"
    sha256 "960d3acbb3ff49d1e5fb4479fb7b6c61c3f9fa762b5175960dd4609e4b9df9e1"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.20/datree-cli_1.5.20_Darwin_arm64.zip"
    sha256 "f88fa98721b04136424fda3e525f4a57bb7aeffe200b93b4affc3be9b37c5ac3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.20/datree-cli_1.5.20_Linux_x86_64.zip"
    sha256 "9e0a0fe195d9613cd3f2eb976c7e1ea9270907a65c27ab7ab132ea8847f7bb9b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.20/datree-cli_1.5.20_Linux_arm64.zip"
    sha256 "6183d2779d9abbba9d23a927480bd9542622541832863673feb1d133eebf7372"
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
