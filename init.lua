local g = vim.g

g.mapleader = " "

require("globals")
require("utils")
require("plugins.barbar")
require("options")

require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("kabouzeid/nvim-lspinstall")
	use("neovim/nvim-lspconfig")
	use("vimwiki/vimwiki")
	use("JoosepAlviste/nvim-ts-context-commentstring")
	use({ "nvim-treesitter/nvim-treesitter", branch = "0.5-compat", run = ":TSUpdate" })
	use({ "nvim-telescope/telescope.nvim", requires = {
		"nvim-lua/plenary.nvim",
		"nvim-lua/popup.nvim",
	} })
	use("lewis6991/gitsigns.nvim")
  use 'folke/tokyonight.nvim'
	use("folke/zen-mode.nvim")
	use({
		"kyazdani42/nvim-tree.lua",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("glepnir/lspsaga.nvim")
	use({ "ms-jpq/coq_nvim", requires = { "ms-jpq/coq.thirdparty", "ms-jpq/coq.artifacts" } })
	use({
		"goolord/alpha-nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
	use("kdheepak/lazygit.nvim")
	use("jiangmiao/auto-pairs")
	use({
		"romgrk/barbar.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function() end,
	})
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("creativenull/diagnosticls-configs-nvim")
	use("terrortylor/nvim-comment")

	use({
		"hoob3rt/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons" },
	})
end)

-- goolord/alpha-nvim
require("alpha").setup(require("alpha.themes.startify").opts)

-- lewis6991/gitsigns.nvim
require("gitsigns").setup({})

-- neovim/nvim-lspconfig
require("lspconf")

-- global mark I for last edit
vim.cmd([[autocmd InsertLeave * execute 'normal! mI']])

-- highlight on yank
vim.cmd([[au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}]])

require("plugins.nvimtree")
require("plugins.icons")
require("plugins.lspsaga")
require("plugins.treesitter")
require("plugins.zenmode")
require("plugins.trouble")
require("plugins.telescope")
require("keymaps")
require("autocmds")
require("diagnosticls")
require("plugins.comments")
require("plugins.lualine")

map("n", "<leader>lg", ":LazyGit<CR>")
