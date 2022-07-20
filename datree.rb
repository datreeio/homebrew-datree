# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.5.36"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.36/datree-cli_1.5.36_Darwin_x86_64.zip"
    sha256 "21210912cba83d0e8eb462d248de5a57c34d957352b67b66ac8a6a442550a9dd"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.5.36/datree-cli_1.5.36_Darwin_arm64.zip"
    sha256 "cde40972f82d37b0eff655674cd4e3885aa1f60c52a9e23d43ef1c98f3321529"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.5.36/datree-cli_1.5.36_Linux_x86_64.zip"
    sha256 "06eaace7adc638d4e9e29f1bac265d27b63c713b6bde13d8b1d333a435fac03b"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.5.36/datree-cli_1.5.36_Linux_arm64.zip"
    sha256 "96bb616efca4beee6d376985dc12f6d1696686c843319565bd88be789773a2d8"
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
