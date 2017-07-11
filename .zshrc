HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt AUTO_CD
setopt CORRECT
setopt PUSHD_SILENT
setopt PUSHD_TO_HOME

setopt NO_BEEP
setopt NO_CASE_GLOB
setopt NUMERIC_GLOB_SORT
setopt EXTENDED_GLOB

setopt NO_CLOBBER
setopt RM_STAR_WAIT

bindkey -v
autoload -U compinit && compinit
# zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
zstyle ':completion:*' verbose yes

autoload -U colors && colors
function genprompt() {
  local i currdir currtime arrowcol gitbranch gitappendcalc gitappend gitcol exitappend localstat

  # Determine if in a git repository
  git rev-parse 2> /dev/null
  if [ $? -ne 128 ]; then
    if [[ `git status --porcelain` ]]
      then gitcol="%{$fg[red]%}"
      else gitcol="%{$fg[green]%}"
    fi
    gitbranch=`git rev-parse --abbrev-ref HEAD`
    gitappendcalc=" on ${gitbranch}"
    gitappend=" on ${gitcol}${gitbranch}%{$reset_color%}"
  fi

  currdir="`pwd | sed "s|^$HOME|~|" 2> /dev/null | sed 's/\([^/]\)[^/]*\//\1\//g'`"

  if [ $rc -eq 0 ]
    then arrowcol="%{$fg[green]%}"
    else arrowcol="%{$fg[red]%}"; exitappend=" ${rc} ─"
  fi

  currtime="${exitappend}${HISTCMD} at `date "+%H:%M:%S"` (${timer_show}s)"
  newprompt="%B%{${fg[cyan]}%}${currdir}%b%{${reset_color}%}${gitappend} "

  for ((i=${#currdir}-1+${#gitappendcalc}; i<=COLUMNS-4-${#currtime}; i+=1)) do
    newprompt="${newprompt}─"
  done

  if [ $rc -eq 0 ]
  then exitappend=""
  else exitappend=" %{${fg[red]}%}${rc}%{${reset_color}%} ─"
  fi

  export PROMPT="${newprompt}${exitappend} ${HISTCMD} at %{${fg[yellow]}%}`date "+%H:%M:%S"`%{${reset_color}%} (${timer_show}s)${arrowcol}▶%{${reset_color}%} "
}
genprompt

EDITOR="vim"
COMPLETION_WAITING_DOTS="true"

alias emacs='open -a /Applications/Emacs.app $1'

# Automatic sudo (M-e)
insert_sudo() { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[e" insert-sudo

export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments

# Fix for VMware Player on Arch
export VMWARE_USE_SHIPPED_LIBS='yes'

# Automatically download plugins
if [[ ! -a ~/.zshplug ]]; then
    echo "Downloading ZSH plugins..."
    sleep 5
    mkdir ~/.zshplug
fi
if [[ ! -a ~/.zshplug/zsh-autosuggestions ]]; then
    git clone "https://github.com/zsh-users/zsh-autosuggestions.git" ~/.zshplug/zsh-autosuggestions
fi
if [[ ! -a ~/.zshplug/zsh-syntax-highlighting ]]; then
    git clone "https://github.com/zsh-users/zsh-syntax-highlighting.git" ~/.zshplug/zsh-syntax-highlighting
fi

source ~/.zshplug/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zshplug/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

clear
# fortune -a | cowsay -f $(ls /usr/local/share/cows | gshuf -n1) | lolcat
echo "\033[1m`whoami`\033[00m on \033[1m`hostname`\033[0m"
date
echo "`uname -o` `uname -r`"
echo

function preexec() {
    timer=${timer:-$SECONDS}
}

function precmd() {
    rc=$?
    if [ $timer ]; then
        timer_show=$(($SECONDS - $timer))
        echo
        genprompt
        unset timer
    fi
}

# This is really stupid, but it's kind of cool.
function mandelbrot {
	local lines columns color a b p q i pnew
	((columns=COLUMNS-1, lines=LINES-1, color=0))
	for ((b=-1.5; b<=1.5; b+=3.0/lines)) do
		for ((a=-2.0; a<=1; a+=3.0/columns)) do
			for ((p=0.0, q=0.0, i=0; p*p+q*q < 4 && i < 32; i++)) do
				((pnew=p*p-q*q+a, q=2*p*q+b, p=pnew))
			done
			((color=(i/4)%8))
			echo -n "\\e[4${color}m "
		done
		echo
	done
}
