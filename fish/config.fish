if status is-interactive
    # Commands to run in interactive sessions can go here
	alias gs="git status" 
    alias ga="git add"
    alias gp="git push"


    # Tmux
    alias tnew="tmux new -s"
    alias tkill="tmux kill-session -t"
    alias ta="tmux attach -t" 
    alias td="tmux detach"
    alias e="exit"
end


set -gx PATH /opt/homebrew/bin $PATH
set -gx NVIM /Users/aaron/.config/nvim

eval (/opt/homebrew/bin/brew shellenv)
