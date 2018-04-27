class Chtf < Formula
  desc 'Terraform version switcher'
  homepage 'https://github.com/Yleisradio/homebrew-terraforms#readme'

  url 'https://github.com/Yleisradio/homebrew-terraforms/archive/v1.4.0.tar.gz'
  sha256 '453fa62fa90ef4df08330c179a18b4a224867bc3444c44d2e2477efbb734ab34'

  head 'https://github.com/Yleisradio/homebrew-terraforms.git'

  option 'without-completions', 'Disable shell command completions'

  def install
    share.install 'chtf'

    if build.with? 'completions'
      bash_completion.install 'etc/chtf-completion.bash' => 'chtf'
      fish_completion.install 'etc/chtf-completion.fish' => 'chtf.fish'
      zsh_completion.install 'etc/chtf-completion.zsh' => '_chtf'
    end
  end

  def caveats; <<~EOS
    Add the following to the ~/.bashrc or ~/.zshrc file:

        # Source chtf
        if [[ -f #{opt_share}/chtf/chtf.sh ]]; then
            source "#{opt_share}/chtf/chtf.sh"
        fi

    Then you can choose (and automatically install) a specified Terraform
    version, e.g.:

        chtf 0.11.3

    EOS
  end
end
