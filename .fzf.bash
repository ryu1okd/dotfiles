# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/R1/.vim/bundle/fzf/bin* ]]; then
  export PATH="$PATH:/Users/R1/.vim/bundle/fzf/bin"
fi

# Man path
# --------
if [[ ! "$MANPATH" == */Users/R1/.vim/bundle/fzf/man* && -d "/Users/R1/.vim/bundle/fzf/man" ]]; then
  export MANPATH="$MANPATH:/Users/R1/.vim/bundle/fzf/man"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/R1/.vim/bundle/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/Users/R1/.vim/bundle/fzf/shell/key-bindings.bash"

