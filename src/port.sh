_patch_help() { 
    if [[ "$*" == "port" ]]; then
        _patch_help_run_man $@ | sed '/ACTIONS/ {N;N;s/.*/Commands:/}'

    else
        _patch_help_run_help_subcmd $@ | \
        _patch_help_preprocess_color | \
        sed \
            -e 's/\t/     /' \
            -e "/^SYNOPSIS/ {N;s/\n.*/\n    $*/;}" \
            -e 's/\[\[portname | pseudo-portname | port-expressions | port-url\]\]/[package]/' \

    fi
}

_patch_table() { 
    if [[ "$*" == "port" ]]; then
        _patch_table_edit_arguments ';;' | \
        _patch_table_edit_commands \
            'unsetrequested(unsetrequested, setunrequested)' \

    elif [[ "$*" == "port activate" ]] \
      || [[ "$*" == "port clean" ]] \
      || [[ "$*" == "port contents" ]] \
      || [[ "$*" == "port deactivate" ]] \
      || [[ "$*" == "port dependents" ]] \
      || [[ "$*" == "port installed" ]] \
      || [[ "$*" == "port location" ]] \
      || [[ "$*" == "port load" ]] \
      || [[ "$*" == "port log" ]] \
      || [[ "$*" == "port logfile" ]] \
      || [[ "$*" == "port reload" ]] \
      || [[ "$*" == "port rdependents" ]] \
      || [[ "$*" == "port uninstall" ]] \
      || [[ "$*" == "port unload" ]] \
    ; then
        _patch_table_edit_arguments ';;' 'package;*[`_choice_installed_package`]'

    elif [[ "$*" == "port install" ]]; then
        _patch_table_edit_arguments \
            'package;[`_choice_package_cached`]' \
            'variant;[`_choice_variant`]' \

    elif [[ "$*" == "port upgrade" ]] \
    ; then
        _patch_table_edit_arguments \
            'package;[`_choice_installed_package`]' \
            'variant;[`_choice_variant`]' \

    else
         _patch_table_edit_arguments ';;' 'package;*[`_choice_package_cached`]'
    fi
}

_choice_package_cached() {
    _argc_util_cache 86400 _choice_package
}

_choice_package() {
    port echo all | sed 's/\(\S\+\).*/\1/'
}

_choice_installed_package() {
    port installed | gawk '/^  / {print $1}'
}

_choice_variant() {
    port variants "$argc_package" | tail -n +2 | sed -e 's/^\(\[\(+\|-\)\]\|\s*\)/\2/' -e 's/: /\t/'
}