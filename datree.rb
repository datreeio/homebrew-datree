# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datree < Formula
  desc ""
  homepage ""
  version "0.6.5-DAT-3371-homebrew"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.6.5-DAT-3371-homebrew/datree-cli_0.6.5-DAT-3371-homebrew_Darwin_x86_64.zip"
    sha256 "1d2b3b52646326ca95654b62376e56d45bf5b3e3ba9d29487e4b3573e4a858f4"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.6.5-DAT-3371-homebrew/datree-cli_0.6.5-DAT-3371-homebrew_Linux_x86_64.zip"
    sha256 "effd9aa34c6d8511402ca1ebd267235a69f52dbc16d9f5c8c1218b53382aa2b2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.6.5-DAT-3371-homebrew/datree-cli_0.6.5-DAT-3371-homebrew_Linux_arm64.zip"
    sha256 "d18e60373fd490fa5f9838b0276aad0b06a75fb0bf578f9427678a24675961cd"
  end

  def install
    bin.install "datree"
  end
end
