class Chtf < Formula
  desc 'Terraform version switcher'
  homepage 'https://github.com/Yleisradio/homebrew-terraforms#readme'

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
