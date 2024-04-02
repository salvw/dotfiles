if status is-interactive
    # Commands to run in interactive sessions can go here

    if type -q docker
        abbr --add dc 'docker compose'
        abbr --add dcd 'docker compose down'
        abbr --add dcu 'docker compose up'
        abbr --add dcud 'docker compose up -d'
    end

    if type -q helix
        abbr --add hx helix
    end

    abbr --add dg 'git --git-dir $HOME/.dotfiles/ --work-tree=$HOME'
end

if set -q KITTY_INSTALLATION_DIR
    set --global KITTY_SHELL_INTEGRATION enabled
    source "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_conf.d/kitty-shell-integration.fish"
    set --prepend fish_complete_path "$KITTY_INSTALLATION_DIR/shell-integration/fish/vendor_completions.d"
end

# set enviroment
export (envsubst < .env)

zoxide init fish | source
