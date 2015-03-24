HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt AUTO_CD
setopt CORRECT
setopt PUSHD_SILENT
setopt PUSHD_TO_HOME
setopt NO_BEEP
setopt NO_CLOBBER
setopt NO_CASE_GLOB
setopt NUMERIC_GLOB_SORT
setopt EXTENDED_GLOB
bindkey -v
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
autoload -U colors && colors
PROMPT="%{$fg[cyan]%}%n%{$reset_color%} at %{$fg[blue]%}%m%{$reset_color%} in %{$fg[green]%}%5(c:...:)%4c%{$reset_color%}
%(?.%{$fg[green]%}✓.%{$fg[red]%}☭)%{$reset_color%} "
EDITOR="vim"
COMPLETION_WAITING_DOTS="true"

alias emacs='open -a /Applications/Emacs.app $1'

source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

export CFLAGS=-Qunused-arguments
export CPPFLAGS=-Qunused-arguments
export PKG_CONFIG_PATH=/usr/local/Cellar/libffi/3.0.13/lib/pkgconfig/
export PYTHONPATH=/usr/local/lib/python2.7/site-packages

clear
fortune -a | cowsay -f $(ls /usr/local/share/cows | gshuf -n1) | lolcat
echo

function preexec() {
    timer=${timer:-$SECONDS}
}

function precmd() {
    if [ $timer ]; then
        timer_show=$(($SECONDS - $timer))
        export RPROMPT="%{$fg[yellow]%}${timer_show}s%{$reset_color%}"
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
