source $HOME/.zshenv
export PATH="$HOME/bin:$PATH"

# --------------------------------------------------
# #  カレントディレクトリ表示（左）
# --------------------------------------------------

PROMPT='
%F{green}%* %n %(5~,%-1~/.../%2~,%F{yellow}【%~】)%f
%F{green}%B>%b%f'

# # --------------------------------------------------
# #  git branch状態を表示（右）
# # --------------------------------------------------

autoload -Uz vcs_info
setopt prompt_subst

# # --------------------------------------------------

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# Ctrl+Dでログアウトしてしまうことを防ぐ
setopt IGNOREEOF

# # 日本語を使用
export LANG=ja_JP.UTF-8

# # 色を使用
autoload -Uz colors
colors

# 補完
autoload -Uz compinit
compinit
# ファイル補完候補に色を付ける
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# emascキーバインド
bindkey -e

# コマンド履歴の保存に関する設定
# 他のターミナルとヒストリーを共有
setopt share_history
# ヒストリーに重複を表示しない
setopt histignorealldups
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# エイリアス
alias lst='ls -ltr --color=auto'
alias l='ls -ltr --color=auto'
alias la='ls -la --color=auto'
alias ll='ls -l --color=auto'
alias so='source'
alias soz='source ~/.zshrc'
alias v='nvim'
alias vi='nvim'
alias vz='nvim ~/.zshrc'
alias c='cdr'

# historyに日付を表示
alias h='fc -lt '%F %T' 1'
alias cp='cp -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='c ../'
alias back='pushd'
alias diff='diff -U1'

## bundle
alias be='bundle exec'
alias bib='bundle install --binstubs --path vendor/bundle'
alias bc="bundle config --global path 'vendor/bundle'"

## rbenv
alias re='rbenv exec'
alias rl='rbenv local'
alias rg='rbenv global'
alias rh='rbenv rehash'

## gem
alias guall='gem uninstall -I -a -x --user-install --force'
alias gp='gem pristine'

## zsh
alias sz='source ~/.zshrc'
alias c='clear'

