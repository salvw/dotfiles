if status is-interactive
    # Commands to run in interactive sessions can go here

    if type -q docker
        abbr --add --global dc 'docker compose'
        abbr --add --global dcd 'docker compose down'
        abbr --add --global dcu 'docker compose up'
        abbr --add --global dcud 'docker compose up -d'
    end

    abbr --add --global dg 'git --git-dir .dotfiles/ --work-tree=$HOME'
end

if set -q KITTY_INSTALLATION_DIR
    set --global KITTY_SHELL_INTEGRATION enabled
    source "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_conf.d/kitty-shell-integration.fish"
    set --prepend fish_complete_path "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_completions.d"
end

# set enviroment
export (envsubst < .env)
