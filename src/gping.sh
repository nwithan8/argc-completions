_patch_table() {
    _patch_table_edit_options \
        '--cmd;~[`_module_os_command_string`]' \
    | \
    _patch_table_edit_arguments ';;' 'hosts...'
}
