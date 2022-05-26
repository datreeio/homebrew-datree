# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.4.32"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.32/datree-cli_1.4.32_Darwin_x86_64.zip"
    sha256 "77314862354bcc894ac490f3e312063752ffb275faa32668fd114c28211a8e92"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.4.32/datree-cli_1.4.32_Darwin_arm64.zip"
    sha256 "03d9e784f200009588fa196be2ba385a0518f6d5a1aad805cb717ae521b6b2df"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.4.32/datree-cli_1.4.32_Linux_x86_64.zip"
    sha256 "63afdea970dc165f588ee16a757799a98fa4a8658828c7e98b8eb5a4936b38f8"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.4.32/datree-cli_1.4.32_Linux_arm64.zip"
    sha256 "3a231d9535e61ca418536eba9ed368aa8ee2eacea0079e61f72b390369e45d61"
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
