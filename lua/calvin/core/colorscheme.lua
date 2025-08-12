-- transparent background

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

vim.cmd("colorscheme tokyonight")
