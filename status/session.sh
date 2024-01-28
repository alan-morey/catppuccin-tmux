show_session() {
  local index=$1

  # Nerd font terminal icons
  #
  #   - nf-cod-terminal
  #   - nf-dev-terminal
  #   - nf-fa-terminal
  #   - nf-oct-terminal
  #   - nf-cod-terminal_powershell
  #   - nf-dev-terminal_badge
  #   - nf-cod-terminal_tmux

  # Swap session icon based on prefix
  #
  local icon=$(get_tmux_option "@catppuccin_session_icon" "#{?client_prefix,,}")
  #local icon=$(get_tmux_option "@catppuccin_session_icon" "#{?client_prefix,,}")
  #local icon=$(get_tmux_option "@catppuccin_session_icon" "#{?client_prefix,,}")
  #local icon=$(get_tmux_option "@catppuccin_session_icon" "#{?client_prefix,,}")
  #local icon=$(get_tmux_option "@catppuccin_session_icon" "#{?client_prefix,,}")
  #local icon=$(get_tmux_option "@catppuccin_session_icon" "#{?client_prefix,,}")

  local color=$(get_tmux_option "@catppuccin_session_color" "#{?client_prefix,$thm_red,$thm_green}")
  local text=$(get_tmux_option "@catppuccin_session_text" "#S")

  local module=$( build_status_module "$index" "$icon" "$color" "$text" )

  echo "$module"
}
