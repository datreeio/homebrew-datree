# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.12.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.12.1/datree-cli_0.12.1_Darwin_x86_64.zip"
    sha256 "e8322b25508705abb7016cd1d09e390e14dd3ddc0a6eb98a828f1d32f0fe314a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.12.1/datree-cli_0.12.1_Linux_x86_64.zip"
    sha256 "f645da2ee88a366c87aac7fdb7520cc663c5b108459e0d7be8b42be3a02b899d"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.12.1/datree-cli_0.12.1_Linux_arm64.zip"
    sha256 "16ea85ebd5cfc763c02946aa47836a11be8b872dbc850508b080f49422f77828"
  end

  def install
    bin.install "datree"
  end
end
