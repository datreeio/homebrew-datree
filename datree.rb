# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.15.5"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.15.5/datree-cli_0.15.5_Darwin_x86_64.zip"
    sha256 "6ee0c39bb2f0a0b49befff5a614fa28732cc0c82bb76ad950cd06d71d90690bc"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.15.5/datree-cli_0.15.5_Linux_x86_64.zip"
    sha256 "710ae45d03c9345e21dd9bdf843f4efba09bf2711e7cff8477fb70ab92c0dcd7"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.15.5/datree-cli_0.15.5_Linux_arm64.zip"
    sha256 "5798b2692e091755a163e5c3402f3e4f073d1487c38450d73bc1f29954c6fc4e"
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
