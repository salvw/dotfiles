# Sal's Dotfiles
### Prerequisites:
- **git**: to manage this
- **fish**: shell
- **nnn**: filebrowser
- ... more later

### Installing

Clone the repo

`git clone --bare https://github.com/salvw/dotfiles.git $HOME/.dotfiles`

Set up a fish abbreviation for git which sets the .git directory to .dotfiles and the working tree to $HOME

`abbr --add --global dg 'git --git-dir $HOME/.dotfiles/ --work-tree=$HOME'`

Check out the master branch

`dg checkout main`

Install plugins

`~/.dotfiles_meta/install.fish`

This setup was inspired by: https://www.ackama.com/what-we-think/the-best-way-to-store-your-dotfiles-a-bare-git-repository-explained/
