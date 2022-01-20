# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.5"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.5/datree-cli_0.15.5_Darwin_x86_64.zip"
    sha256 "317118801e0d74124cab876e0b4aec9e8ef254bf5cf29ab05926ea30a930392d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.5/datree-cli_0.15.5_Linux_x86_64.zip"
    sha256 "a77b57088a317da7781fd42ec2534c15935f72f311b5a08154fffd3db28e6b07"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.5/datree-cli_0.15.5_Linux_arm64.zip"
    sha256 "40697a40eb6b183f69ae77f45a20b36eb0b0da353e62a9712fab7a5e29aeff01"
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
