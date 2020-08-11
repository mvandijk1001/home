# Home dir as git repo via a command `home`
alias home='git --work-tree=$HOME --git-dir=$HOME/.home'

# Attach tmux
alias atmux='tmux attach -d'

# New tmux with three panes like this:
# 0|1
# 0|-
# 0|2
# The selectp commands reset the oder the panes were selected in
alias ntmux='tmux new -d; tmux splitw -h; tmux splitw -v; tmux selectp -t 1; tmux selectp -t 0; tmux attach'

alias python3_venv='python3 -m venv venv'

alias psdb='ps aux | grep -iE "sequoia|sdb"'
