if status is-interactive
  # Commands to run in interactive sessions can go here
  
  if type -q docker-compose
    abbr --add --global dc   'docker compose'
    abbr --add --global dcd  'docker compose down'
    abbr --add --global dcu  'docker compose up'
    abbr --add --global dcud 'docker compose up -d'
  end
end
