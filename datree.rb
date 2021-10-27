# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.20"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.20/datree-cli_0.14.20_Darwin_x86_64.zip"
    sha256 "8d94afb9d217e6a5acaca86febb68465b3a8f9a00f1619cc796e8e558fca7d82"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.20/datree-cli_0.14.20_Linux_x86_64.zip"
    sha256 "4cb63456b23801b839fdd95ed099c898ba4effe8626594490151e58880efe31d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.20/datree-cli_0.14.20_Linux_arm64.zip"
    sha256 "5f228b421c56e1bb9ebd677278b8e5777a5a15714ecea9b0ac12a80982cd20fa"
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
