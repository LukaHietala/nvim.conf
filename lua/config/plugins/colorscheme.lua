return { 
	'rose-pine/neovim', 
	name = 'rose-pine',
	config = function()
		require('rose-pine').setup({
    		disable_italics = true,
		disable_background = true
    		})
		vim.cmd([[colorscheme rose-pine]])
	end,
}

