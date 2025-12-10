-- transparent backgrounds

themes = {
    "catppuccin",
    "dracula",
    "everforest",
    "nordic",
    "tokyonight",
}

require("dracula").setup(
    {
        transparent_bg = true,
    }
)

require("tokyonight").setup(
    {
        transparent = true,
        styles = {
            sidebars = "transparent",
            floats = "transparent",
        }
    }
)

require("catppuccin").setup(
    {
        transparent_background = true,
    }
)

require("everforest").setup(
    {
        transparent_background_level = 2,
    }
)

require("nordic").setup(
    {
        transparent = {
            bg = true,
            float = false,
        }
    }
)


-- vim.cmd("colorscheme catppuccin")
return themes
