-- plugins/telescope.lua:
return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
        require("telescope").setup {
            pickers = {
                find_files = {
                    theme = "dropdown",
                    layout_config = {
                        anchor = "S"    
                    }
                },
                live_grep = {
                    theme = "dropdown",
                    layout_config = {
                        anchor = "S"    
                    }   
                }
            }
        }

		local builtin = require("telescope.builtin")

        vim.keymap.set('n', '<leader>ff',
            require("telescope.builtin").find_files)

		vim.keymap.set('n', '<leader>fg', builtin.live_grep)


	end
}
