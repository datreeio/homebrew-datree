# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.8.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.8.0/datree-cli_0.8.0_Darwin_x86_64.zip"
    sha256 "72a3184cb1ece2b1450d038f906395ce93390f3e6a14de72f8ff1919cdc44fd6"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.8.0/datree-cli_0.8.0_Linux_x86_64.zip"
    sha256 "9e8c8fa8b25027e56d2debc5d84178374722e81edaa9f582f8046c76d8362d23"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.8.0/datree-cli_0.8.0_Linux_arm64.zip"
    sha256 "49f8ff06a2e2f1241f82f57b8dd801bf6a9eb63afabc678062d22f72f13e8ae5"
  end

  def install
    bin.install "datree"
  end
end
