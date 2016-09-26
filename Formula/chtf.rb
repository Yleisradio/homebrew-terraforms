class Chtf < Formula
  desc 'Terraform version switcher'
  homepage 'https://github.com/Yleisradio/homebrew-terraforms#readme'
  url 'https://github.com/Yleisradio/homebrew-terraforms/archive/v1.2.1.tar.gz'
  sha256 'f87445f036e8fc665a64559fb0d4a12697e973714ffebee406f72f419912f0cd'

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
