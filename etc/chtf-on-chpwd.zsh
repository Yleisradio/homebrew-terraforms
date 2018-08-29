# change terraform version on cding into dir, if it has a .tf_version file. Otherwise, reset the terraform state.
chtf-on-chpwd() {
    if [[ -f ./.tf_version ]]; then
        local tf_ver=$(cat ./.tf_version)
        chtf $tf_ver
    elif [[ ! -z "$CHTF_CURRENT" ]]; then
        _chtf_reset
    fi

}
chpwd_functions=(${chpwd_functions[@]} "chtf-on-chpwd")