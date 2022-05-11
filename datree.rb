# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.10/datree-cli_1.4.10_Darwin_x86_64.zip"
    sha256 "bc6b6d82aa66d96dcf857b2930782cbe7735468336f26db82743c19e365a0a86"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.10/datree-cli_1.4.10_Darwin_arm64.zip"
    sha256 "1d10336bdab2842aa2a4d5665e729997a5e1596be5ebfb3cb679c5c30c148173"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.10/datree-cli_1.4.10_Linux_x86_64.zip"
    sha256 "3074f777fc02a25d6a54784b404ea77a9548fc4f8cc9949138bb767238a14431"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.10/datree-cli_1.4.10_Linux_arm64.zip"
    sha256 "b623c4a000d5253004534b5df672415f4f0850986f1c0559aec4aaac8324fb8a"
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
