# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.0/datree-cli_1.5.0_Darwin_x86_64.zip"
    sha256 "b892d9b4ef36ef38a941a20d2b7757a3fb40707cba7661c852a18e6dbdf2aa69"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.0/datree-cli_1.5.0_Darwin_arm64.zip"
    sha256 "372a7b11a6f7a4c7d48a18bf5ae7fd491cb2f5aaca7376672996dd0df46a453d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.0/datree-cli_1.5.0_Linux_x86_64.zip"
    sha256 "86cde96a1f6dd0d2afcf23eb005b4e2b846f0f508778d545bd074828de9e768d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.0/datree-cli_1.5.0_Linux_arm64.zip"
    sha256 "ec072f58480bf5cb839603c2237b4d986a0fad2a01fe0b7d721d6bb752dfc01f"
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
