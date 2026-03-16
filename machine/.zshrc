typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

eval "$(zoxide init zsh)"
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

fastfetch --config arch.jsonc --logo-color-1 "38;2;139;26;26" --logo-color-2 "38;2;170;40;40" --logo-color-3 "38;2;204;51;51" --logo-color-4 "38;2;170;100;80" --logo-color-5 "38;2;140;110;95" --logo-color-6 "38;2;100;90;85"


# add pomosync to path
export PATH="$HOME/.local/bin:$PATH"

# opencode
export PATH=/Users/qtzx/.opencode/bin:$PATH
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export PATH="$HOME/bin:$PATH"
