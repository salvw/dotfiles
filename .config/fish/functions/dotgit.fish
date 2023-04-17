function dotgit --wraps='git' --description 'Manage dotfiles repository with home as working directory'
  git --git-dir .dotfiles/ --work-tree=$HOME $argv
        
end
