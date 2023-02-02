-- Lua
-- require("lsp-colors").setup({
-- Error = "#db4b4b",
-- Warning = "#e0af68",
-- Information = "#0db9d7",
-- Hint = "#10B981"
-- })

--vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#4f4f4f" })
-- set the bg color to transparent for line numbers
-- vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })

-- Rose Pine

require('rose-pine').setup({
    disable_italics = true,
})

-- setup must be called before loading
vim.cmd.colorscheme 'rose-pine'
