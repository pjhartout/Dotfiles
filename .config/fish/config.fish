
# # STARTUP #
# function fish_greeting
#     # Show system info
#     pfetch
# end

set -gx HTTPS_PROXY http://nibr-proxy.global.nibr.novartis.net:2011
set -gx HTTP_PROXY http://nibr-proxy.global.nibr.novartis.net:2011
set -x PATH $PATH:/home/hartoph1/.local/bin

# ALIASES #
# VPN shortcuts
alias vpn='protonvpn-cli c'
alias vpn-disconnect='protonvpn-cli d'
alias vpn-status='protonvpn-cli status'
alias vpn-eth='/opt/cisco/anyconnect/bin/vpn'
alias vpnui-eth='/opt/cisco/anyconnect/bin/vpnui'

# Network
alias speed='speedtest-cli'
alias network='sudo iftop'

# Redshift
alias redshift-enable='redshift -t 19000:19000 -b 0.4:0.4'

# Update system
alias update='sudo apt-get update && sudo apt-get upgrade -y && sudo snap refresh'
alias upgradable='apt list --upgradable'

# Start Jupyter Notebook/Lab
alias notebook='jupyter notebook'
alias lab='jupyter lab'
alias glog='git log --oneline --decorate --graph --all'

# The following aliases are from
# https://gitlab.com/dwt1/dotfiles/-/blob/master/.config/fish/config.fish

# Changing "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias cgcc='rm -rf ~/.cache/google-chrome/'


# # wakatime for fish
# #
# # Add this to the fish_prompt function in
# # ~/.config/fish/functions/fish_prompt.fish
# # (or if it doesn't exist, create it).


# # We've also included an example of how
# # to determine the current project from the pwd.
# # It'll only work without alterations if
# # you happen to keep all your projects in
# # ~/Sites/ on a Mac, but it's easy to modify

# set -l project

# if echo (pwd) | grep -qEi "^/Users/$USER/Sites/"
#     set  project (echo (pwd) | sed "s#^/Users/$USER/Sites/\\([^/]*\\).*#\\1#")
# else
#     set  project "Terminal"
# end

# wakatime --write --plugin "fish-wakatime/0.0.1" --entity-type app --project "$project" --entity (echo $history[1] | cut -d ' ' -f1) 2>&1 > /dev/null&

# SETTING THE STARSHIP PROMPT #
starship init fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/hartoph1/.anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/hartoph1/Applications/google-cloud-sdk/path.fish.inc' ]; . '/Users/hartoph1/Applications/google-cloud-sdk/path.fish.inc'; end
