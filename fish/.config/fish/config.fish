if status is-interactive
    set -gx CHROME_BIN /usr/bin/chromium-browser
    
    # Use Node LTS version on startup
    nvm use lts
    
    # Start tmux if not already in a tmux session
    if not set -q TMUX
        tmux
    end
end
