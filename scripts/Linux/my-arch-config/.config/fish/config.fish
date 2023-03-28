if status is-interactive
    # Commands to run in interactive sessions can go here
    # set -gx PAGER less
    # alias ls="lsd --group-dirs first"
    # alias ll="lsd -l --group-dirs first"
    alias hostname="hostnamectl hostname"
    alias ipa="ip -c a"
    function man --wraps man
        command man $argv | bat -p --color always --language man
    end
    function ll --wraps lsd
        command lsd -lh --color always --group-directories-first $argv
    end
    # Prepare fnm-ready env
    # fnm env | source
end
# set -gx VOLTA_HOME "$HOME/.volta"
# set -gx PATH "$VOLTA_HOME/bin" $PATH
# set -gx GIT_ASKPASS "/usr/bin/ksshaskpass" $PATH
# set -gx PATH "/opt/dotnet" $PATH
