local eslint = {
	sourceName = "eslint",
	command = "eslint_d",
	rootPatterns = { ".eslintrc.js", "package.json" },
	debounce = 100,
	args = { "--stdin", "--stdin-filename", "%filepath", "--format", "json" },
	parseJson = {
		errorsRoot = "[0].messages",
		line = "line",
		column = "column",
		endLine = "endLine",
		endColumn = "endColumn",
		message = "${message} [${ruleId}]",
		security = "severity",
	},
	securities = { [2] = "error", [1] = "warning" },
}
local flake = require("diagnosticls-configs.linters.flake8")

local prettier = require("diagnosticls-configs.formatters.prettier")
local stylua = require("diagnosticls-configs.formatters.stylua")
local autopep8 = require("diagnosticls-configs.formatters.autopep8")
local eslint_fmt = require("diagnosticls-configs.formatters.eslint_fmt")

local dlsconfig = require("diagnosticls-configs")

dlsconfig.init({})
dlsconfig.setup({
	["json"] = {
		formatter = prettier,
	},
	["javascript"] = {
		linter = eslint,
		formatter = { prettier, eslint_fmt },
	},
	["javascriptreact"] = {
		linter = eslint,
		formatter = { prettier, eslint_fmt },
	},
	["typescript"] = {
		linter = eslint,
		formatter = { prettier, eslint_fmt },
	},
	["typescriptreact"] = {
		linter = eslint,
		formatter = { prettier, eslint_fmt },
	},
	["python"] = {
		linter = flake,
		formatter = autopep8,
	},
	["lua"] = {
		formatter = stylua,
	},
})

vim.cmd("autocmd BufWritePost *.js,*.jsx,*.ts,*.tsx,*.rs,*.py,*.lua,*.json lua vim.lsp.buf.formatting_sync()")
