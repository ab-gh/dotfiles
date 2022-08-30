# fox.zsh-theme

# Conda info
local conda_info='$(conda_prompt_info)'
conda_prompt_info() {
  if [ -n "$CONDA_DEFAULT_ENV" ]; then
    echo -n "|$CONDA_DEFAULT_ENV| "
  else
    echo -n "|base| "
  fi
}

# virtualenv info
local virtualenv_info='$(virtualenv_prompt_info)'
virtualenv_prompt_info() {
  if [ -n "$VIRTUAL_ENV" ]; then
    VIRTUAL_ENV_NAME=`basename $VIRTUAL_ENV`
    echo -n "|$VIRTUAL_ENV_NAME| "
  fi
}

PROMPT='%{$fg[cyan]%}┌[%{$fg_bold[white]%}%n%{$reset_color%}%{$fg[cyan]%}@%{$fg_bold[white]%}%M%{$reset_color%}%{$fg[cyan]%}]%{$fg[white]%}-%{$fg[cyan]%}(%{$fg_bold[white]%}%~%{$reset_color%}%{$fg[cyan]%})$(git_prompt_info) $(basename "$CONDA_PREFIX")
└> %{$reset_color%}'

PROMPT+='%{$fg[green]%}$(virtualenv_info)%{$reset_color%}%'


ZSH_THEME_GIT_PROMPT_PREFIX="-[%{$reset_color%}%{$fg[white]%}git://%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}%{$fg[cyan]%}]-"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔%{$reset_color%}"
