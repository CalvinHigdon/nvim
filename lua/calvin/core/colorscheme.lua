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
        -- transparent_bg = true,
    }
)

require("tokyonight").setup(
    {
        -- transparent = true,
        -- styles = {
        --     sidebars = "transparent",
        --     floats = "transparent",
        -- }
    }
)

require("catppuccin").setup(
    {
        -- transparent_background = true,
    }
)

require("everforest").setup(
    {
        -- transparent_background_level = 2,
    }
)

require("nordic").setup(
    {
        transparent = {
            -- bg = true,
            -- float = false,
        }
    }
)

function reloadColors()
    local current = vim.g.colors_name
    vim.cmd("colorscheme " .. current)
end

vim.api.nvim_create_user_command('ToggleTrans',
  function(foo)
    require("dracula").setup({})
    require("tokyonight").setup({})
    require("catppuccin").setup({})
    require("everforest").setup({})
    require("nordic").setup({})
    reloadColors()
  end,
  { nargs = 0 })

-- vim.cmd("colorscheme catppuccin")
return themes
