source $HOME/.zshenv

# --------------------------------------------------
# #  カレントディレクトリ表示（左）
# --------------------------------------------------

PROMPT='
%F{green}%* %n %F{yellow} %(5~,%-1~/.../%2~,【%~】)%f
%F{green}%B$%b%f'

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

### Color
## 色を使用
autoload -Uz colors
colors
# change 'ls' color
export CLICOLOR=1;
export LSCOLORS=gxfxcxdxbxegedabagacad;
export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43:"
# 補完
autoload -Uz compinit
compinit
# ファイル補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LSCOLORS}

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
alias lst='ls -ltr'
alias l='ls -ltr'
alias la='ls -la'
alias ll='ls -l'
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
alias ri='rbenv install'
alias re='rbenv exec'
alias rl='rbenv local'
alias rg='rbenv global'
alias rh='rbenv rehash'
alias rv='rbenv versions'

## gem
alias guall='gem uninstall -I -a -x --user-install --force'
alias gp='gem pristine'

## zsh
alias sz='source ~/.zshrc'
alias c='clear'

## Git
alias gb='git branch'
alias gi='git init'
alias gs='git status'
alias gl='git log'
alias ga='git add -A'
alias co='git checkout'
alias gm='git merge'
alias gcom='git commit'
# addしてコミット
alias gcoma='git commit -a'
alias gp='git push'
# ブランチを作成してチェックアウト
alias gcb='git checkout -d'
# 全てのブランチをグラフで見る
alias glg='git log --oneline --decorate --graph --all'
