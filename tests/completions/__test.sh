#!/usr/bin/env bash
# Automatic generated, DON'T MODIFY IT.

# @flag -a                                         Ignored for compatibility.
# @flag -b                                         Ignored for compatibility.
# @option -C --directory                           Change to DIRECTORY before doing anything.
# @option -d --diff <file> <file>                  Compare two files with each other.
# @option -f <FILE>                                Read FILE as a makefile.
# @option --file <FILE>                            Read FILE as a makefile.
# @option --makefile <FILE>                        Read FILE as a makefile.
# @flag -H --no-highlight                          Disable syntax highlighting.
# @option -m --model                               Choose a model.
# @option -l <N>                                   Don't start multiple jobs unless load is below N.
# @option --load-average <N>                       Don't start multiple jobs unless load is below N.
# @option --max-load <N>                           Don't start multiple jobs unless load is below N.
# @flag -n                                         Don't actually run any recipe; just print them.
# @flag --just-print                               Don't actually run any recipe; just print them.
# @flag --dry-run                                  Don't actually run any recipe; just print them.
# @flag --recon                                    Don't actually run any recipe; just print them.
# @option -O --output-sync <TYPE>                  Synchronize output of parallel jobs by TYPE.
# @option -p --package <SPEC>                      Package to modify
# @option -w --workdir                             Working directory inside the container
# @option -x --proxy <[protocol://]host[:port]>    Use this proxy
# @flag -v --verbose*                              Use verbose output (-vv very verbose/build.rs output)
# @flag -. --hidden                                Search hidden files and directories.
# @flag -# --progress-bar                          Display transfer progress as a bar
# @option --debug <FLAGS>                          Print various types of debugging information.
# @option --with-commit* <MSG>                     Sets custom commit messages to include in the changelog
# @option --alt-svc <file name>                    Enable alt-svc with this cache file
# @option --mutex <<type>[:specifier]>             use a mutex to ensure only one yarn instance is executing
# @option --ciphers <list of ciphers>              SSL ciphers to use
# @option --resolve <[+]host:port:addr[,addr]...>  Resolve the host+port to this address
# @option --ftp-ssl-ccc-mode <active/passive>      Set CCC mode
# @flag -nc                                        skip downloads that would download to
# @flag --no-clobber                               skip downloads that would download to
# @option --stop-at <y-m-dTh:m>                    Stop rsync at the specified point in time
# @flag --color                                    Controls colors in the output.
# @flag --no-color                                 Controls colors in the output.
# @flag --http1.1                                  Use HTTP 1.1
# @option --filter1 <selector>
# @option --filter2* <pattern>                     Includes all direct and indirect dependencies of the matched packages.
# @option --packages* <packages>                   Packages to inspect for updates
# @option --show-scope[worktree|local|global|system|command]  show scope of config
# @option --edition[2015|2018|2021] <YEAR>         Edition to set for the crate generated
# @option --set-color[auto|always|never] <WHEN>    Coloring: auto, always, never
# @option -I <pkcs11>                              Specify the PKCS#11 shared library ssh should use to communicate with a PKCS#11 token providing keys for user authentication.
# @option --jobs <N>                               Number of parallel jobs, defaults to ♯ of CPUs
# @flag --bun                                      Force a script or package to use Bun.js instead of Node.js (via symlinking node)
# @option --install-strategy[hoisted|nested|shallow] <value>  Sets the strategy for installing packages in node_modules.
# @option --cgroupns <string>                      Cgroup namespace to use (host|private)
# @option --progress[auto|plain|tty] <string>      Set type of progress output.
# @option --ansi[never|always|auto] <string>       Control when to print ANSI control characters
# @option --ignored[traditional|matching|no]       Show ignored files, optional modes: traditional, matching, no.
# @option --driver[docker-container|kubernetes|remote] <string>  Driver to use
# @option --exclude* <regex>                       Exclude source files from the report [default: test\.(js|mjs|ts|jsx|tsx)$]
# @arg ARG1!
# @arg ARG2+
# @arg ARG3
# @arg ARG4*
# @arg ARG5*
# @arg deployed-project-name!
# @arg arg7*
# @arg branch-tag!
# @arg arg8*
# @arg repository
# @arg pathspecs*
# @arg tarball-dir <<tarball>|<dir>>
# @arg mbox-Maildir* <<mbox> | <Maildir>>
# @arg tarball-file!
# @arg ARG9*
# @arg rustfmt_options*


# {{ __test run
# @cmd
run() {
    :;
}
# }} __test run

# {{ __test build
# @cmd
# @alias b
build() {
    :;
}
# }} __test build

# {{ __test test
# @cmd
# @alias t
test() {
    :;
}
# }} __test test

# {{ __test cmd1
# @cmd Compare two commit ranges
cmd1() {
    :;
}
# }} __test cmd1

# {{ __test cmd2
# @cmd
# @arg pattern!
# @arg rev*
# @arg path*
cmd2() {
    :;
}
# }} __test cmd2

# {{ __test cmd3
# @cmd
# @arg CONTAINER*
cmd3() {
    :;
}
# }} __test cmd3

# {{ __test cmd4
# @cmd
# @arg value[foo|bar|baz]
cmd4() {
    :;
}
# }} __test cmd4

# {{ __test cmd5
# @cmd
# @arg source_file
# @arg filter    Dot separated path to symbol
cmd5() {
    :;
}
# }} __test cmd5

command eval "$(argc --argc-eval "$0" "$@")"