-- from neovim kickstart https://github.com/nvim-lua/kickstart.nvim and
-- kickstart modular https://github.com/dam9000/kickstart-modular.nvim
-- Thanks TJ and contributors!

-- for templ
vim.filetype.add { extension = { templ = 'templ' } }

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Set up vim.pack ]]
require 'pack'

-- [[ Configure and install plugins ]]
require 'plugins'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
