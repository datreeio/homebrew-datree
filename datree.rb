# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.87"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.87/datree-cli_0.14.87_Darwin_x86_64.zip"
    sha256 "b477203f9c4736605ce7d2000831c64c55aa458ab36bdf0a3c54def691fffb01"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.87/datree-cli_0.14.87_Linux_x86_64.zip"
    sha256 "d590f1287ce5eae441261cf8d0d2924898ee95c4a29f2738ac06ad7a286fcc7c"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.87/datree-cli_0.14.87_Linux_arm64.zip"
    sha256 "92b5760b928cbf4a32bf8e47a5a1732b3a638b9d4dd998bee151b2cd0b11e153"
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
