# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.3.2"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.2/datree-cli_1.3.2_Darwin_x86_64.zip"
    sha256 "e8ceda8d38a04eccebc4ac57ff39fefda6cc13bb932bfbe437c747fb8c78b7cc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.3.2/datree-cli_1.3.2_Darwin_arm64.zip"
    sha256 "fad1b5529bb84d7c4cb1294a80fdc3e041050d28377bfae721e803fd2d5e5355"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.3.2/datree-cli_1.3.2_Linux_x86_64.zip"
    sha256 "cad0a145d339d8a301b27b1a405fd15a0d88eddade3d3d62dfb765af2c2f791f"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.3.2/datree-cli_1.3.2_Linux_arm64.zip"
    sha256 "c8a963ce9554ef75ed2a9a9c9d1178b3fbba626bef0f19b1e196dc2444ef5e79"
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
