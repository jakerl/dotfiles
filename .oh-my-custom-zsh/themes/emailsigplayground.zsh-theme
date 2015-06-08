# Based on nebirhos's theme, without rvm indicators.
# @host ➜ currentdir git:(branchname)

# Get the current ruby version in use with RVM:
if [ -e ~/.rvm/bin/rvm-prompt ]; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rvm:(%{$fg[green]%}\$(~/.rvm/bin/rvm-prompt s i v g)%{$fg_bold[blue]%})%{$reset_color%} "
else
  if which rbenv &> /dev/null; then
    RUBY_PROMPT_="%{$fg_bold[blue]%}rbenv:(%{$fg[green]%}\$(rbenv version | sed -e 's/ (set.*$//')%{$fg_bold[blue]%})%{$reset_color%} "
  fi
fi

1=+
2=-

if (( HISTCMD %2 )); then
   DOT_CONFIG=+
else;
   DOT_CONFIG=-
fi

DOTS="%(?:%{$fg_bold[green]%}$DOT_CONFIG :%{$fg_bold[red]%}$DOT_CONFIG %s)"

# Get the host name (first 4 chars)
# HOST_PROMPT_="%{$fg_bold[red]%}@$HOST[0,4] $DOTS %{$fg_bold[cyan]%}%c "
# HOST_PROMPT_="%{$fg_bold[red]%}@$HOST[0,4]:l %{$fg_bold[cyan]%}%~ $DOTS"

HOST_PROMPT_="%{$fg_bold[cyan]%}%~ $DOTS"
GIT_PROMPT="%{$fg_bold[blue]%}\$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}"
PROMPT="$HOST_PROMPT_$GIT_PROMPT"

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
