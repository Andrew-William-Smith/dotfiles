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
PROMPT="%{$fg[white]%}[%n@%m %{$fg[cyan]%}%~%{$fg[white]%}]%# "
RPROMPT="%(?.%{$fg[green]%}[%?].%{$fg[red]%}[%?])%{$fg[white]%}"
EDITOR="vim"
COMPLETION_WAITING_DOTS="true"
alias vim='vim -c "set shortmess+=I"'
alias vi='vim -c "set shortmess+=I"'
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

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
