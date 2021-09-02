# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.11.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.11.0/datree-cli_0.11.0_Darwin_x86_64.zip"
    sha256 "bf5bde4a1a550d5278eafae28bfeef597b8b477b81004a17461733476d2aa79e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.11.0/datree-cli_0.11.0_Linux_x86_64.zip"
    sha256 "6d2d1657d91fc5e800f73329c54048555018587b092bf4ec701d4c4ddf9f3de9"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.11.0/datree-cli_0.11.0_Linux_arm64.zip"
    sha256 "e553e6de0101ee25754e6ca2fb29b39006e85951ff77277aedeb8bc8c721d618"
  end

  def install
    bin.install "datree"
  end
end
