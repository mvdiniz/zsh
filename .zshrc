export ZSH="/home/$USER/.oh-my-zsh"
# BINDKEYS SESSION
# note:
# in vim the HOME and END keys do not work properly when setting
# HOME for ^[[H~ and END for ^[[F~
# SecureCRT does not work properly with zsh if you dont set the bindkeys
# even tho trying to use ^[[H~ and ^[[F~
# so we must set the proper ones for SecureCRT which are HOME ^[[1~ and END ^[[4~
bindkey	"^[[H~"	beginning-of-line	# All kinds of terminal applications
bindkey "^[[1~" beginning-of-line	# SecureCRT
bindkey "^[[F"	end-of-line		# All kinds of terminal applications
bindkey "^[[4~" end-of-line		# SecureCRT
bindkey "^[b"	backward-word 		# Alt-Left 	 SecureCRT
bindkey "^[[1;5D"	backward-word	# Alt-Left 	 other terminals
bindkey "^[f"	forward-word		# Alt-Right	 SecureCRT
bindkey "^[[1;5C"	forward-word	# Alt-Right	 other terminals
bindkey "^[[1;3D"	backward-word
bindkey "^[[1;3C"	forward-word
ZSH_THEME="fox"
CASE_SENSITIVE="true"
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 3
DISABLE_AUTO_TITLE="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd.mm.yyyy"
HISTSIZE=10000
SAVEHIST=10100
plugins=(ansible aws gcloud git golang man nmap python screen sudo themes tmux)
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export EDITOR='vim'
export ARCHFLAGS="-arch x86_64"
export PATH=$PATH:$HOME/bin:/usr/local/bin:/usr/local/go/bin
cd $HOME
