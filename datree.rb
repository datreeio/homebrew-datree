# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.22"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.22/datree-cli_0.15.22_Darwin_x86_64.zip"
    sha256 "b37b1530b385199b31ca67ced03592579c88bb2122da8e5692c80bb4ef2f43ea"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.22/datree-cli_0.15.22_Darwin_arm64.zip"
    sha256 "f6662a553c7735d2ccd6bcd9d4346a871ba58cd56bb12077a70d397896a9c2a7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.22/datree-cli_0.15.22_Linux_x86_64.zip"
    sha256 "3fbc8b76c3cbcaede1bacaba4c0387b4277a20fcdca274afac1421d4916c1fc1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.22/datree-cli_0.15.22_Linux_arm64.zip"
    sha256 "995e8f3ffcb5b847ce0537219191008ecd3dbec72cf283b7e5c741e83abe9245"
  end

  def install
    bin.install "datree"
  end

  def caveats
    <<~EOS
      \033[32m[V] Downloaded Datree
      [V] Finished Installation

      \033[35m Usage: $ datree test [k8s-file.yaml]
       Using Helm? => https://hub.datree.io/helm-plugin
      tput init
    EOS
  end
end
