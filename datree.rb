# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "0.8.0-internal"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/datreeio/datree/releases/download/0.8.0-internal/datree-cli_0.8.0-internal_Darwin_x86_64.zip"
    sha256 "bad15b2140b8069278d8f1a59e19567f9510be4d6da315fe4c91bdf4c18f8c2a"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/0.8.0-internal/datree-cli_0.8.0-internal_Linux_x86_64.zip"
    sha256 "119d62349e6fd82dc288e9893288289d199026c32f7858172f996adfca82a9fa"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/0.8.0-internal/datree-cli_0.8.0-internal_Linux_arm64.zip"
    sha256 "e419229e52ecc6b8dd476f4538d09e2908d1d89516a9c03cb16c5a94f689062c"
  end

  def install
    bin.install "datree"
  end
end
