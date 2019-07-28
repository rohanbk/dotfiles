
# Path to your oh-my-zsh installation.
  export ZSH="/home/rohanbk/.oh-my-zsh"

ZSH_THEME="imajes"

plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/rohanbk/google-cloud-sdk/path.zsh.inc' ]; then . '/home/rohanbk/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/rohanbk/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/rohanbk/google-cloud-sdk/completion.zsh.inc'; fi

# git
alias gp='git push'

# kubectl
source <(kubectl completion zsh)
#source <(kops completion zsh)
#source <(stern --completion=zsh)

# my aliases for kubectl
alias k=kubectl

# kubectl get
alias kg='k get'
alias kgp='kg pod'
alias kgs='kg service'
alias kgd='kg deployment'
alias kgse='kg secret'
alias kgss='kg statefulset'
alias kgn='kg node'

# kubectl describe
alias kd='k describe'
alias kdp='kd pod'
alias kds='kd service'
alias kdd='kd deployment'
alias kdse='kd secret'
alias kdss='kd statefulset'
alias kdn='kd node'

# kubectl delete 
alias kde='k delete'
alias kdep='kde pod'
alias kdes='kde svc'
alias kded='kde deployment'
alias kdese='kde secret'
alias kdess='kde statefulset'

# misc
alias ke='k exec -it'
alias kl='k logs -f'

