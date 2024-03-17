class Chtf < Formula
  desc "Terraform version switcher"
  homepage "https://github.com/Yleisradio/chtf#readme"

  url "https://github.com/Yleisradio/chtf/archive/refs/tags/v2.2.1.tar.gz"
  sha256 "d90edf77cdcc78c100541d6bfc3f2fec116621f2e0bd6eea3af7b966fd34cabb"
  license "MIT"

  head "https://github.com/Yleisradio/chtf.git"

  option "without-completions", "Disable shell command completions"

  def install
    pkgshare.install "chtf/chtf.sh"
    pkgshare.install "chtf/__chtf_terraform-install.sh"

    fish_function.install "chtf/chtf.fish"
    fish_function.install_symlink pkgshare/"__chtf_terraform-install.sh"

    if build.with? "completions"
      bash_completion.install "etc/chtf-completion.bash" => "chtf"
      fish_completion.install "etc/chtf-completion.fish" => "chtf.fish"
      zsh_completion.install "etc/chtf-completion.zsh" => "_chtf"
    end
  end

  def caveats
    <<~EOS
      For bash and zsh add the following to the ~/.bashrc or ~/.zshrc file:

          if [[ -f #{HOMEBREW_PREFIX}/share/chtf/chtf.sh ]]; then
              source #{HOMEBREW_PREFIX}/share/chtf/chtf.sh
          fi

      chtf is autoloaded in fish, no need to `source` anything in config.fish
    EOS
  end

  test do
    assert_equal "chtf: #{version}", shell_output("source #{HOMEBREW_PREFIX}/share/chtf/chtf.sh && chtf --version").strip
    assert_equal "chtf: #{version}", shell_output("fish -c 'chtf --version'").strip
  end
end
