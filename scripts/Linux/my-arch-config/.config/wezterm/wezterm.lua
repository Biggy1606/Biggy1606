local wezterm = require 'wezterm';
return {
    font = wezterm.font_with_fallback {
	      'MesloLGSDZ Nerd Font',
        'FiraCode Nerd Font',
        'PowerlineSymbols',
      },
    font_size = 12.0,
    color_scheme="Atelierlakeside (dark) (terminal.sexy)",
    warn_about_missing_glyphs=false
}
