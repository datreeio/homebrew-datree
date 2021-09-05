# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.12.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.12.0/datree-cli_0.12.0_Darwin_x86_64.zip"
    sha256 "265390084b3f4ff2c8d564e259cafae5d65ae678e334557fb5589cdcc346f664"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.12.0/datree-cli_0.12.0_Linux_x86_64.zip"
    sha256 "28da60210aa6817a35ba436ab2b57c1d3c0e468a7844ce8b8b3dc673b940d59a"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.12.0/datree-cli_0.12.0_Linux_arm64.zip"
    sha256 "5649227d0a51d9696cc9917305f84be2dd6584d959d83e3a0866ff4b32f77f89"
  end

  def install
    bin.install "datree"
  end
end
