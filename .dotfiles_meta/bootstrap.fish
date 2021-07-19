#!/usr/bin/env fish
set -l path_to_shell (which fish)

# Instead of $SHELL (on linux not MacOS) more accurately use: grep ^(id --universaln): /etc/passwd | cut -d : -f 7-
if test "$SHELL" != "$path_to_shell" 
  if not grep -q "$path_to_shell" /etc/shells
    echo "=> Adding fish to /etc/shells"
    echo "$path_to_shell" | sudo tee -a /etc/shells >/dev/null
    echo
  end
  echo "=> Setting default shell to $path_to_shell"
  chsh -s "$path_to_shell"
  echo
end

if not type -q fisher
  echo "=> Installing fisher and fisher plugins"
  curl -sL git.io/fisher | source && fisher install jorgebucaran/fisher
  echo
  fisher update
  echo
end

if type -q exa
  echo "=> Exa is installed, installing plugin"
  fisher install gazorby/fish-exa
else
  echo "=> Exa is not installed, skipping plugin"
end
echo

if type -q docker-compose
  echo "=> Docker Compose is installed, adding abbreviations."
  abbr --add --universal dc docker-compose
  abbr --add --universal dcd 'docker-compose down'
  abbr --add --universal dcu 'docker-compose up'
  abbr --add --universal dcud 'docker-compose up -d'
end
