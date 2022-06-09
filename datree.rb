# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.7"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.7/datree-cli_1.5.7_Darwin_x86_64.zip"
    sha256 "ec6eaf25548a6d8ba8cfb0b6cbe3c4fcb3707a3cabd071b97e2895693ad6ac21"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.7/datree-cli_1.5.7_Darwin_arm64.zip"
    sha256 "4b919c6a15c8c319454ec221bdb7a1fdc740db307e79662b87572acb4d614fc2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.7/datree-cli_1.5.7_Linux_x86_64.zip"
    sha256 "9f7e47dfffbaa08f23a3b38429f85f8118d89872508ac9ca019d5a05310a65fc"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.7/datree-cli_1.5.7_Linux_arm64.zip"
    sha256 "6be1bf77cdfdd6512a85a1f6c2d5585e7cbbda3592ff6c2b2aadca99db07071b"
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
