# Load our dotfiles.
for file in ~/.{aliases,aliases_private,exports,functions,functions_private}; do
    [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

export EDITOR=vim

# Bash Completion
source /etc/bash_completion.d/*

# Case-insensitive globbing (used in pathname expansion).
shopt -s nocaseglob

# Bash attempts to save all lines of a multiple-line command in the same history entry.
# This allows easy re-editing of multi-line commands.
shopt -s cmdhist

# Terragrunt
alias tgpa="terragrunt plan-all --terragrunt-source /workspaces/devops/modules"
alias tgaa="terragrunt apply-all --terragrunt-source /workspaces/devops/modules"
