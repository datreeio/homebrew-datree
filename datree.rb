# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.19"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.19/datree-cli_0.15.19_Darwin_x86_64.zip"
    sha256 "7c38ba00f1d8fc91764109168bab020417b5450be8d197337fec8426103c88df"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/0.15.19/datree-cli_0.15.19_Darwin_arm64.zip"
    sha256 "e38193734e7dbbdb3b2d74f59ed7f6b7793778303c0189a4a5b7e6a37b56512a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.19/datree-cli_0.15.19_Linux_x86_64.zip"
    sha256 "7ea301c21b93bbb5147c625ea46c71469a8505d02ecc7cd10c6f1fb92cafcfa7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.19/datree-cli_0.15.19_Linux_arm64.zip"
    sha256 "a8856e73711afed39f6ac9486a86c7998d2fbb6b6959adbd458222469bceeb02"
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
