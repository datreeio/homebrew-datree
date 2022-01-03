# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.14.92"

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Darwin_x86_64.zip"
    sha256 "15699a02edcab0681457117bbfc616ac60dadf48b07188a9fba6dc9a1ed8e87c"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Linux_x86_64.zip"
    sha256 "111b650348f2032efbad1e43607d435aad46d9cccdc13c9ef33b794e526693aa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.14.92/datree-cli_0.14.92_Linux_arm64.zip"
    sha256 "f29e068367d3d1941bc3b6e221f2c8b6ca9f26b686a137da8904dab9ce642846"
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
