# --- Starship Configuration ---
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"

# --- Aliases ---
alias discord="vesktop"
alias spotify="ncspot"

# --- Site Shortcuts ---
# Simple aliases for Zen Browser
alias youtube="zen-browser https://youtube.com"
alias gmail="zen-browser https://mail.google.com"
alias twitch="zen-browser https://twitch.tv"
alias mashov="zen-browser https://web.mashov.info/students/login"

# --- Home Function ---
function home() {
    clear
    cd "$HOME"
    if command -v fastfetch >/dev/null 2>&1; then
        fastfetch
    fi
}

# --- Startup ---
# Run fastfetch on startup if it exists
if command -v fastfetch >/dev/null 2>&1; then
    fastfetch
fi
export PATH="$PATH:$HOME/.npm-global/bin"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/Omer/scripts:$PATH"
