source $HOME/.zshenv

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# コマンド履歴の保存に関する設定
HISTFILE=~/.zhistory           # 履歴の場所。なければ勝手に作られ chmod 600 されます
SAVEHIST=500                   # ファイルに保存する件数。bashのデフォルトと同じにしてみました
HISTSIZE=$(($SAVEHIST * 2))    # メモリに蓄える件数
setopt HIST_EXPIRE_DUPS_FIRST  # 単に古いコマンドより、重複コマンドの方を優先的に忘れるオプション

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

