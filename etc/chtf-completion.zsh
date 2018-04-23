#compdef chtf

function _chtf() {
    _arguments \
        '(- 1)'{-h,--help,-V,--version} \
        '(-)1:Terraform version:($(chtf | tr -d " *") system)'
}

_chtf
