# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.18"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.18/datree-cli_0.14.18_Darwin_x86_64.zip"
    sha256 "ee5eea63b8c46a9b2181d2015c3f047a523a578b7e895df081a214b5efbecc13"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.18/datree-cli_0.14.18_Linux_x86_64.zip"
    sha256 "81decdeca888bfc5d451cc914a4c1ddf8eb3b59fdb95c03e11c9d5b5eaee0dd1"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.18/datree-cli_0.14.18_Linux_arm64.zip"
    sha256 "76a3338c86822412229080dc8a03aa4ec308770ca34481d8299339e8709df141"
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
