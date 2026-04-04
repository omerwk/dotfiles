# --- Starship Configuration ---
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"

# --- Aliases ---
alias discord="discord"
alias spotify="flatpak run io.github.hrkfdn.ncspot"

# --- Site Shortcuts ---
# Simple aliases for Zen Browser via Flatpak
alias youtube="flatpak run app.zen_browser.zen https://youtube.com"
alias gmail="flatpak run app.zen_browser.zen https://mail.google.com"
alias twitch="flatpak run app.zen_browser.zen https://twitch.tv"
alias mashov="flatpak run app.zen_browser.zen https://web.mashov.info/students/login"

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
