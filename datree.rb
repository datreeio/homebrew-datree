# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.10"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Darwin_x86_64.zip"
    sha256 "84c4e9ffafab55641a7868b1ea9f2bbefe8096cc160d1c9cd6cbc699c37b39b4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Darwin_arm64.zip"
    sha256 "0c2dcfefd85e57309edad0ccfa8b11140910d1320dc65782d656257826499ee0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Linux_x86_64.zip"
    sha256 "88239a1f8ec984eca7cd62ae1723a5a3539fe8d89c506a18d3ba806aebcafae3"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.10/datree-cli_1.1.10_Linux_arm64.zip"
    sha256 "d7432a6cc6a57c6f42977ce854c462403ce96c62f611ffde9cecfe63a8f48446"
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
