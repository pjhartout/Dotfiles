# Bash shell config file

# Path to your oh-my-bash installation.
export OSH=/home/pjh/.oh-my-bash
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='emacs'
fi

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


# Aliases
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# Wakatime
/home/pjh/.bash-wakatime/bash-wakatime.sh


# Add starship
eval "$(starship init bash)"
