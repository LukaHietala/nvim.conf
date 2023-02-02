-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- Color theme(s)
    -- use { "catppuccin/nvim", as = "catppuccin" }
    -- use { "https://codeberg.org/oahlen/iceberg.nvim", as = "iceberg" }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require("rose-pine").setup()
        end
    })
    use { "catppuccin/nvim", as = "catppuccin" }
    --Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    -- telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    --LSP Stuff
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }
    use 'jose-elias-alvarez/null-ls.nvim'

    -- Error lens
    use {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                {
                    fold_open = "v", -- icon used for open folds
                    fold_closed = ">", -- icon used for closed folds
                    indent_lines = false, -- add an indent guide below the fold icons
                    signs = {
                        -- icons / text used for a diagnostic
                        error = "error",
                        warning = "warn",
                        hint = "hint",
                        information = "info"
                    },
                    use_diagnostic_signs = false -- enabling this will use the signs defined in your lsp client
                }
            }
        end
    }
    use 'folke/lsp-colors.nvim'
    -- Formatting
    use "lukas-reineke/lsp-format.nvim"
    -- Discord Rich Presence
    use 'andweeb/presence.nvim'
    -- Copilot
    use('github/copilot.vim')
    -- Undotree
    use("mbbill/undotree")
    -- Fun stuff
    use('ThePrimeagen/vim-be-good')
end)
