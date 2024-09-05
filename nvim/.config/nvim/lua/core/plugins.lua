local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- my plugins
  -- use 'NLKNguyen/papercolor-theme'
  use 'folke/tokyonight.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    requires = {{'nvim-lua/plenary.nvim'}}
  }
  use {
    'akinsho/bufferline.nvim', 
    tag = "*", 
    requires = 'nvim-tree/nvim-web-devicons'
  }
  use 'yorickpeterse/nvim-window'
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use({
   "L3MON4D3/LuaSnip",
   -- follow latest release.
   tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
   -- install jsregexp (optional!:).
   dependencies = { "rafamadriz/friendly-snippets" },
   run = "make install_jsregexp"
  })
  use {
    "OXY2DEV/markview.nvim",
    lazy = false,      -- Recommended
    -- ft = "markdown" -- If you decide to lazy-load anyway

    dependencies = {
        -- You will not need this if you installed the
        -- parsers manually
        -- Or if the parsers are in your $RUNTIMEPATH
        "nvim-treesitter/nvim-treesitter",

        "nvim-tree/nvim-web-devicons"
    }
  }
  use {
    'echasnovski/mini.nvim', 
    version = false,
  }
  use {
    'folke/which-key.nvim',
    }
  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
