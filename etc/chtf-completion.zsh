#compdef chtf

function _chtf() {
    _arguments \
        -h --help -V --version \
        '1:Terraform version:($(chtf | tr -d " *") system)'
}

_chtf
