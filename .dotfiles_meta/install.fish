#!/usr/bin/env fish

set DIR (dirname (status --current-filename))

if not type -q fisher
  echo "=> Installing fisher and fisher plugins"
  curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
end

echo
if type -q exa
  echo "=> Exa is installed, installing plugin"
  fisher install gazorby/fish-exa
else
  echo "=> Exa is not installed, skipping plugin"
end

fisher install < $DIR/fish_plugins
reload
echo 
echo Installation complete!
