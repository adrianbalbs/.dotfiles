set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -x VOLTA_HOME "$HOME/.volta"
    fish_add_path "$VOLTA_HOME/bin"

    set GOPATH "$HOME/go"
    fish_add_path "$GOPATH/bin"

    fish_add_path "/opt/homebrew/bin/"

    fzf --fish | source
    zoxide init --cmd cd fish | source
    direnv hook fish | source
    starship init fish | source
end
