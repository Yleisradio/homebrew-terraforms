class Chtf < Formula
  desc 'Terraform version switcher'
  homepage 'https://github.com/Yleisradio/homebrew-terraforms#readme'
  url 'https://github.com/Yleisradio/homebrew-terraforms/archive/v1.0.0.tar.gz'
  sha256 'b4ffb1a4215855ada2cfb80e5d8d1700472b670df024ed0419720b65a6f5e81c'

  head 'https://github.com/Yleisradio/homebrew-terraforms.git'

  def install
    share.install 'chtf'
  end

  def caveats; <<-EOS.undent
    Add the following to the ~/.bashrc or ~/.zshrc file:

        source #{opt_share}/chtf/chtf.sh

    Then you can choose (and automatically install) a specified Terraform
    version, e.g.:

        chtf 0.6.8

    EOS
  end
end
