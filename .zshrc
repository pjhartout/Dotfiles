# Z shell config file

SPARK_HOME=/home/pjh/.spark/spark-3.0.0-bin-hadoop2.7
export PATH=$SPARK_HOME/bin:$PATH
export PATH=$HOME/Applications:$PATH
export PATH=/home/pjh/.anaconda/bin/wakatime:$PATH

export PYSPARK_DRIVER_PYTHON=jupyter
export PYSPARK_DRIVER_PYTHON_OPTS='lab'

pfetch

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/pjh/Applications/google-cloud-sdk/path.zsh.inc' ]; then . '/home/pjh/Applications/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/pjh/Applications/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/pjh/Applications/google-cloud-sdk/completion.zsh.inc'; fi

# Launch starship
eval "$(starship init zsh)"
