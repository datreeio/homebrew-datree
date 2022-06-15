# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.15"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.15/datree-cli_1.5.15_Darwin_x86_64.zip"
    sha256 "806ab16c38ade7055a0073c30a0aaf40f036497ce4977619fde9c5a82bf335a7"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.15/datree-cli_1.5.15_Darwin_arm64.zip"
    sha256 "d08515cc4f9deafb8e23910a8af682e1e4f0f4a84e222aae54fe8ceadb8ed965"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.15/datree-cli_1.5.15_Linux_x86_64.zip"
    sha256 "bc5c5e5223b903dfda5faaaa152264f4f3c0aadb45d84036265577c81419f36b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.15/datree-cli_1.5.15_Linux_arm64.zip"
    sha256 "e341d53ad871c411edff501f1482d1be7675a87bb701fa05bd382e3c068b5e70"
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
