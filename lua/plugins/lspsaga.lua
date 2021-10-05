-- glepnir/lspsaga.nvim
require("lspsaga").init_lsp_saga({})

map("n", "gh", ":Lspsaga lsp_finder <cr>")
map("n", "<space>ca", ":Lspsaga code_action<CR>")
map("v", "<space>ca", ":Lspsaga range_code_action<CR>")
map("n", "K", ":Lspsaga hover_doc<CR>")
map("n", "gs", ":Lspsaga signature_help<CR>")
map("n", "gr", ":Lspsaga rename<CR>")
map("n", "<space>gd", ":Lspsaga preview_definition<CR>")
map("n", "cd", ":Lspsaga show_line_diagnostics<CR>")
map("n", "<space>cc", ":Lspsaga show_cursor_diagnostics<CR>")
map("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>")
map("n", "]d", ":Lspsaga diagnostic_jump_next<CR>")
