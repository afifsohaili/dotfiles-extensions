# Custom Git functions
alias gpso='git push origin'
alias gpf='git push --force'
alias gcpk='git cherry-pick'
alias gjr='git jira'
alias gjro='git jira -o'
alias grom='git rebase origin/master'
alias gfrs='git fetch && git reset --hard origin/master'
alias gpr="hub pull-request -o"

alias css_files_changed="git diff --name-status master | grep \"^[A|M].*css\" | cut -f2 -d$'\t'"
alias files_changed="git diff --name-status master | grep \"^[A|M]\" | cut -f2 -d$'\t'"
