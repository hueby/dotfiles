set fish_greeting ""

#function fish_prompt
#  set_color $fish_color_cwd
#  echo -n (prompt_pwd)
#  set_color normal
#  echo -n ' % '
#end

function lockme
  /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
end

function update
  brew update --all ;and brew upgrade --all
end

function updateall
  brew update --all ;and brew upgrade --all
  vim +BundleUpdate
end

function upgrade
  brew cask update
end

function cleanup
  brew cleanup ;and brew cask cleanup
end

function vimu
  vim +BundleUpdate
end

function dlaudio
    youtube-dl -f bestaudio --extract-audio --audio-format mp3 $argv
end

#aliases
alias powconf "cd /usr/local/lib/python3.4/site-packages/powerline/"
alias vim nvim
alias ctags-objc "ctags --languages=objectivec --langmap=objectivec:.h.m.swift"


#set fish_function_path $fish_function_path "/Users/dennis/git-repos/powerline/powerline/bindings/fish"
#powerline-setup

function export
  set arr (echo $argv|tr = \n)
  set -gx $arr[1] $arr[2]
end

#set PATH $HOME/.jenv/shims $PATH
#command jenv rehash 2>/dev/null
#function jenv
#  set cmd $argv[1]
#  set arg ""
#  if test (count $argv) -gt 1
#    # Great... fish first array index is ... 1 !
#    set arg $argv[2..-1]
#  end
#
#  switch "$cmd"
#    case enable-plugin rehash shell shell-options
#        set script (jenv "sh-$cmd" "$arg")
#        eval $script
#    case '*'
#        command jenv $cmd $arg
#    end
#end

set PATH /usr/local/texlive/2015/bin/x86_64-darwin $PATH
set PATH /Users/dennis/.local/bin $PATH
set PATH /usr/local/mysql/bin $PATH
set GEM_HOME ~/.ruby $GEM_HOME

 function fish_prompt
     ~/git-repos/powerline-shell/powerline-shell.py --cwd-mode dironly --cwd-max-depth 2 $status --shell bare ^/dev/null
 end
