# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.22"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.22/datree-cli_1.1.22_Darwin_x86_64.zip"
    sha256 "f1bbde16ad58c7c6d2a45892370e4c717560083691b72a45127c098878b26831"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.22/datree-cli_1.1.22_Darwin_arm64.zip"
    sha256 "b6266508bc3fdfcff89d01c536457f4de0c4947c2e3984b55f436312a981cc1f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.22/datree-cli_1.1.22_Linux_x86_64.zip"
    sha256 "8ee16e6165966dff41993d7b0dcd51c997c1fb7ff36ff1548ede8401d8ceec40"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.22/datree-cli_1.1.22_Linux_arm64.zip"
    sha256 "f0c6c0390ec1e2d58b6660a4513cc1e802c5929c93958a42bbf80cd8fabc9eff"
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
