class Chtf < Formula
  desc "Terraform version switcher"
  homepage "https://github.com/Yleisradio/chtf#readme"

  url "https://github.com/Yleisradio/chtf/archive/v2.0.0.tar.gz"
  sha256 "1a0d03c97fd4a48c748942e40fc10812846b3515cc08da5867cd85f206742933"

  head "https://github.com/Yleisradio/chtf.git"

  option "without-completions", "Disable shell command completions"

  def install
    share.install "chtf"

    if build.with? "completions"
      bash_completion.install "etc/chtf-completion.bash" => "chtf"
      fish_completion.install "etc/chtf-completion.fish" => "chtf.fish"
      zsh_completion.install "etc/chtf-completion.zsh" => "_chtf"
    end
  end

  def caveats
    <<~EOS
      For bash and zsh add the following to the ~/.bashrc or ~/.zshrc file:

          if [[ -f #{opt_share}/chtf/chtf.sh ]]; then
              source #{opt_share}/chtf/chtf.sh
          fi

      For fish add the following into ~/.config/fish/config.fish:

          if test -f #{opt_share}/chtf/chtf.fish
              source #{opt_share}/chtf/chtf.fish
          end
    EOS
  end
end
