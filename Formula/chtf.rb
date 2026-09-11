class Chtf < Formula
  desc "Terraform version switcher"
  homepage "https://github.com/tmatilai/chtf#readme"

  url "https://github.com/tmatilai/chtf/archive/refs/tags/v2.5.0.tar.gz"
  sha256 "75b31e01c199c77caf5e792da3fb7cb27caca607c7bbfe8fb63b4cc806d4a8c1"
  license "MIT"

  head "https://github.com/tmatilai/chtf.git"

  option "without-completions", "Disable shell command completions"

  depends_on "fish" => :test

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
