local g = vim.g

g.tokyonight_transparent_sidebar = true
g.tokyonight_transparent = true
vim.cmd("colorscheme tokyonight")

g.vimwiki_list = {
	{
		path = "~/Documents/vimwiki",
		syntax = "markdown",
		ext = ".md",
		custom_wiki2html = "vimwiki_markdown",
		template_ext = ".md",
	},
	{
		path = "~/Documents/vimwiki/coding",
		syntax = "markdown",
		ext = ".md",
		custom_wiki2html = "vimwiki_markdown",
		template_ext = ".md",
	},
	{
		path = "~/code/internnova-docs",
		syntax = "markdown",
		ext = ".md",
		path_html = "~/code/internnova-docs/",
		custom_wiki2html = "vimwiki_markdown",
		template_ext = ".md",
	},
}

g.lsp_config = {
	lua = {
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim", "map" },
				},
			},
		},
	},
}

g.coq_settings = {
	auto_start = "shut-up",
	keymap = {
		jump_to_mark = "<c-q>",
	},
}
