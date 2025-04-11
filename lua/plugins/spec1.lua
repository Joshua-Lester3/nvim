return {
	{ 
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local builtin = require('telescope.builtin')
			vim.keymap.set('n', '<leader>pf', builtin.find_files, { })
			vim.keymap.set('n', '<C-l>', builtin.git_files, { })
			vim.keymap.set('n', '<leader>ps', function() 
				builtin.grep_string({ search = vim.fn.input("Grep > ") });
			end)
		end,
	},
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
   		build = ":TSUpdate",
		lazy = false
	},
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},
	{'hrsh7th/cmp-buffer'},
	{'saadparwaiz1/cmp_luasnip'},
	{'L3MON4D3/LuaSnip'},
}
