# ENV
PATH=$HOME/.nodebrew/current/bin:$PATH
PATH=/Applications/Karabiner.app/Contents/Library/bin:$PATH

export GOOGLE_APPLICATION_CREDENTIALS=/Users/R1/.ssh/gladcube/r-okada-test-gcp.json

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
zstyle ':completion:*:default' menu select=2

autoload -Uz compinit
compinit
# End of lines added by compinstall
setopt AUTO_PUSHD
# beep
setopt nobeep
# language
export LANG=ja_JP.UTF-8
# Edito
export EDITOR=vim

# current dir name and user name
autoload -U colors
colors

# vcs_infoロード
autoload -Uz vcs_info
# 表示フォーマットの指定
# %b ブランチ名
# %a アクション名
zstyle ':vcs_info:*' formats '%{'${fg[green]}'%}[%b]%{'${reset_color}'%}'
zstyle ':vcs_info:*' actionformats '[%b|%a]'
# プロンプト表示直前にvcs_info呼び出し
setopt prompt_subst
precmd() {
  vcs_info
  PROMPT="
 [%n] %{${fg[yellow]}%}%~%{${reset_color}%} ${vcs_info_msg_0_}
 $ "
}


PROMPT2='[%n]> '

# cd and ls
function cd() {
  builtin cd $@ && ls;
}

# initial keyboard setting
# alias onkeyboard="sudo kextload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"
# alias offkeyboard="sudo kextunload /System/Library/Extensions/AppleUSBTopCase.kext/Contents/PlugIns/AppleUSBTCKeyboard.kext/"

# ------------------------------
# # Look And Feel Settings
# # ------------------------------
# ### Ls Color ###
# # 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

[ -f ~/.include.zsh ] && source ~/.include.zsh
