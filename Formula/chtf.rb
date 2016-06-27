class Chtf < Formula
  desc 'Terraform version switcher'
  homepage 'https://github.com/Yleisradio/homebrew-terraforms#readme'
  url 'https://github.com/Yleisradio/homebrew-terraforms/archive/v1.1.1.tar.gz'
  sha256 '5a3648e5e032607962c7565acd613593303e3f33fdd3e874cc2246f08cd1115f'

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
