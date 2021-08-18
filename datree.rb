class Datree < Formula
  url "https://github.com/datreeio/datree/releases/download/0.7.1/datree-cli_0.7.1_Darwin_x86_64.zip"
  sha256 "db15b3a9139b3ac11b89aa871cdeba678545d3334cf2102d39932f20aead683d"

  # ...

  def install
    bin.install 'datree'
    puts "Completed install"
  end
end
