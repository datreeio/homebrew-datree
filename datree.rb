# typed: false
# frozen_string_literal: true

class Datree < Formula
  desc ""
  homepage "https://datree.io/"
  version "1.1.17"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.17/datree-cli_1.1.17_Darwin_x86_64.zip"
    sha256 "3f2467af43c4bf4269a879092d9e0cac6bd88754f5cb3879d9d4341dc3a8b7c8"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/datreeio/datree/releases/download/1.1.17/datree-cli_1.1.17_Darwin_arm64.zip"
    sha256 "6e90fca6a999177743146281b69d17bc1856058cc1040f9f736273b035c4b8e2"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/datreeio/datree/releases/download/1.1.17/datree-cli_1.1.17_Linux_x86_64.zip"
    sha256 "b242adad675fae3ae2468781302f9aab30dbc418e234122f51a2504fb3d90efe"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/datreeio/datree/releases/download/1.1.17/datree-cli_1.1.17_Linux_arm64.zip"
    sha256 "047e44a227d14a4bfa3ed52ffab568eb0ace74241e435b71f6d241f6c4bdf73a"
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
