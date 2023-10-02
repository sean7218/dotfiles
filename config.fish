
if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_add_path $HOME/.cargo/bin

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /Users/sean7218/miniconda3/bin/conda
    eval /Users/sean7218/miniconda3/bin/conda "shell.fish" "hook" $argv | source
end
# <<< conda initialize <<<

set username "sean7218"
