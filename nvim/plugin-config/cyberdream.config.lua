require("cyberdream").setup({
    transparent = true,
    italic_comments = true,
    -- Replace all fillchars with ' ' for the ultimate clean look
    hide_fillchars = false,
    borderless_telescope = false,
    terminal_colors = true,

    theme = {
        variant = "default", -- use "light" for the light variant
        highlights = {
            -- CursorLine = { bg = "#F04D9F" },
            Visual = { bg = "#77A1FF" }
            -- Highlight groups to override, adding new groups is also possible
            -- See `:h highlight-groups` for a list of highlight groups or run `:hi` to see all groups and their current values

            -- Example:
            -- Comment = { fg = "#696969", bg = "NONE", italic = true },
            -- Comment = { fg = "#ffffff", bg = "GREY", italic = true },

            -- Complete list can be found in `lua/cyberdream/theme.lua`
        },

        -- Override a color entirely
        colors = {
            -- For a list of colors see `lua/cyberdream/colours.lua`
            -- Example:
            bg = "NONE",
            green = "#00ff00",
            magenta = "#ff00ff",
        },
    },
})
