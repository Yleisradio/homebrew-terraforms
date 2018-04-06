# Copyright (c) 2017 Alex Kulbii
# Copyright (c) 2018 Yleisradio Oy
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# 'Software'), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Load and store the version number
set -l chtf_version_file (dirname (status --current-filename))/VERSION
set -g CHTF_VERSION (cat $chtf_version_file)

test -n "$CASKROOM"; or set -g CASKROOM '/usr/local/Caskroom'

function chtf
    switch "$argv[1]"
        case '-h' or '--help'
            echo 'usage: chtf [<version> | system]'
        case '-V' or '--version'
            echo "chtf: $CHTF_VERSION"
        case ''
            _chtf_list
        case 'system'
            _chtf_reset
        case '*'
            _chtf_use "$argv[1]"
    end
end

function _chtf_reset
    test -z "$CHTF_CURRENT"; and return 0

    set -g fish_user_paths (string match -v -- $CHTF_CURRENT $fish_user_paths)

    set -e CHTF_CURRENT
    set -e CHTF_CURRENT_TERRAFORM_VERSION
end

function _chtf_install
    echo "chtf: Installing Terraform version $argv[1]"
    brew cask install "terraform-$argv[1]"
end

function _chtf_use -a tf_version
    set -l tf_path $CASKROOM/terraform-$tf_version/$tf_version

    if not test -d $tf_path
        _chtf_install $tf_version; or return 1
    end

    if not test -x $tf_path/terraform
        echo "chtf: $tf_path/terraform not executable" >&2
        return 1
    end

    _chtf_reset

    set -gx CHTF_CURRENT $tf_path
    set -gx CHTF_CURRENT_TERRAFORM_VERSION $tf_version
    set -g fish_user_paths $CHTF_CURRENT $fish_user_paths
end

function _chtf_list
    for dir in $CASKROOM/terraform-*/*
        set -l prefix (_chtf_list_prefix $dir)
        set -l tf_version (basename $dir)
        echo -s $prefix $tf_version
    end
end

function _chtf_list_prefix -a dir
    if test "$dir" = "$CHTF_CURRENT"
        printf ' * '
    else
        printf '   '
    end
end
