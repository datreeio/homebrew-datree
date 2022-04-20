# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.0"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.0/datree-cli_1.3.0_Darwin_x86_64.zip"
    sha256 "c286982e5a2e07aa96820d9ee2fb6f8383b17263491956b8d83e9fa83b35a4e4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.0/datree-cli_1.3.0_Darwin_arm64.zip"
    sha256 "4730bf7838e351eee51d3570a5da094985eb5329263c46ca4d8e59cf5e73b70b"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.0/datree-cli_1.3.0_Linux_x86_64.zip"
    sha256 "fb61e87f5dc36bb07de893600c620cb1cc4da2797eaf124f4e711451e6e77445"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.0/datree-cli_1.3.0_Linux_arm64.zip"
    sha256 "d2c21b90767d70589f0df653335c2459cf7cdb7b82857394133e2fb91d7f32bf"
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
