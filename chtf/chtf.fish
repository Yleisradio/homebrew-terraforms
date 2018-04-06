# Copyright (c) 2017 Alex Kulbii
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

set VERSION_FILE (dirname (status --current-filename))/VERSION
set -g CHTF_VERSION (cat $VERSION_FILE)
test -n "$CASKROOM"; or set -g CASKROOM '/usr/local/Caskroom'

function chtf_reset
    if test -z $CHTF_CURRENT
        return
    end

    set PATHS_COUNT (count $PATH)
    for i in (seq 1 $PATHS_COUNT)
        if [ $PATH[$i] = $CHTF_CURRENT ]
            set -e PATH[$i]
            break
        end
    end

    set -e CHTF_CURRENT
    set -e CHTF_CURRENT_TERRAFORM_VERSION
end

function chtf_install
   echo "chtf: Installing Terraform version $argv[1]"
   brew cask install "terraform-$argv[1]"
 end

function chtf_use
    set TF_VERSION $argv[1]
    set TF_PATH "$CASKROOM/terraform-$TF_VERSION/$TF_VERSION"
    if not test -d "$TF_PATH"
        chtf_install "$TF_VERSION" or return 1
    end

    if not test -x "$TF_PATH/terraform"
        echo "chtf: $tf_path/terraform not executable" >&2
        return 1
    end

    if test -n $CHTF_CURRENT
        chtf_reset
    end

    set -gx CHTF_CURRENT "$TF_PATH"
    set -gx CHTF_CURRENT_TERRAFORM_VERSION "$TF_VERSION"
    set -x PATH "$CHTF_CURRENT" $PATH
end

function chtf_list
    for dir in "$CASKROOM"/terraform-*/*
        set TF_VERSION (basename "$dir")
        if [ "$dir" = "$CHTF_CURRENT" ]
            echo " * $TF_VERSION"
        else
            echo "   $TF_VERSION"
        end
    end
end

function chtf
    # Fish treats empty list as a nonexistent value
    #  this means we can't use empty value as a switch argument
    #  so check for an empty value in advance
    if test -z $argv[1]
        chtf_list
        return
    end

    switch $argv[1]
        case '-h' or '--help'
            echo 'usage: chtf [<version> | system]'
        case '-V' or '--version'
            echo "chtf: $CHTF_VERSION"
        case 'system'
            chtf_reset
        case '*'
            chtf_use "$argv[1]"
    end
end
