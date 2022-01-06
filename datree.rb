# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.95"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.95/datree-cli_0.14.95_Darwin_x86_64.zip"
    sha256 "bcab1118e6c4d677faeea53d087fa374ca90e688dd0dd1bfea3e42d9c18d4448"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.95/datree-cli_0.14.95_Linux_x86_64.zip"
    sha256 "7f91f785d7592aa8a6a3ea00172c8d5acd701ec79e3768d936cf6318bf278f6d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.95/datree-cli_0.14.95_Linux_arm64.zip"
    sha256 "cdf0af82fd7a0966c6ac450570e15aa00d8007cb45b7d4939f3620ce30e9b581"
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
