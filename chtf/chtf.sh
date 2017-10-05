# Copyright (c) 2012-2016 Hal Brodigan
# Copyright (c) 2016 Yleisradio Oy
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

# load version
VERSION_FILE="$(dirname "${BASH_SOURCE[0]}")"/VERSION
CHTF_VERSION="$(cat "$VERSION_FILE")"
: "${CASKROOM:=/usr/local/Caskroom}"

chtf_reset() {
    [[ -z "$CHTF_CURRENT" ]] && return

    PATH=":$PATH:"; PATH="${PATH//:$CHTF_CURRENT:/:}"
    PATH="${PATH#:}"; PATH="${PATH%:}"
    hash -r

    unset CHTF_CURRENT
    unset CHTF_CURRENT_TERRAFORM_VERSION
}

chtf_install() {
    echo "chtf: Installing Terraform version $1"
    brew cask install "terraform-$1"
}

chtf_use() {
    local tf_path="$CASKROOM/terraform-$1/$1"

    [[ -d "$tf_path" ]] || chtf_install "$1" || return 1

    if [[ ! -x "$tf_path/terraform" ]]; then
        echo "chtf: $tf_path/terraform not executable" >&2
        return 1
    fi

    [[ -n "$CHTF_CURRENT" ]] && chtf_reset

    export CHTF_CURRENT="$tf_path"
    export CHTF_CURRENT_TERRAFORM_VERSION="$1"
    export PATH="$CHTF_CURRENT:$PATH"
}

chtf_list() (
    # Avoid glob matching errors.
    # Note that we do this in a subshell to restrict the scope.
    # bash
    shopt -s nullglob 2>/dev/null || true
    # zsh
    setopt null_glob 2>/dev/null || true

    for dir in "$CASKROOM"/terraform-*/*; do
        if [[ "$dir" == "$CHTF_CURRENT" ]]; then
            echo " * $(basename "$dir")"
        else
            echo "   $(basename "$dir")"
        fi
    done;
)

chtf() {
    case "$1" in
        -h|--help)
            echo "usage: chtf [VERSION | system]"
            ;;
        -V|--version)
            echo "chtf: $CHTF_VERSION"
            ;;
        "")
            chtf_list
            ;;
        system)
            chtf_reset
            ;;
        *)
            chtf_use "$1"
            ;;
    esac
}
