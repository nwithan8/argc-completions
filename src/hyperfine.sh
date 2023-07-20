_patch_table() { 
    _patch_table_edit_options \
        '--shell;[`_module_os_shell`]' \
        '--style;[`_choice_style`]' \
        '--sort;[`_choice_sort`]' \

}

_choice_style() {
    cat <<-'EOF'
basic	disable output coloring and interactive elements
full	enable all effects even if no interactive terminal was detected.
nocolor	keep the interactive output without any colors.
color	keep the colors without any interactive output.
none	disable all the output of the tool.
EOF
}

_choice_sort() {
    cat <<-'EOF'
auto	the speed comparison will be ordered by time and the markup tables will be ordered by command (input order).
command	order benchmarks in the way they were specified
mean-time	order benchmarks by mean runtime
EOF
}