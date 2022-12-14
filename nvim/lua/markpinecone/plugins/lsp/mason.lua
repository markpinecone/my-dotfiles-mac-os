-- import mason plugin safely
local mason_status, mason = pcall(require, "mason")
if not mason_status then
	return
end

-- import mason-lspconfig plugin safely
local mason_lspconfig_status, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_status then
	return
end

-- import mason-null-ls plugin safely
local mason_null_ls_status, mason_null_ls = pcall(require, "mason-null-ls")
if not mason_null_ls_status then
	return
end

-- enable mason
mason.setup()

mason_lspconfig.setup({
	-- list of servers for mason to install
	ensure_installed = {
		"tsserver",
		"html",
		"cssls",
		"tailwindcss",
		"sumneko_lua",
		"intelephense",
		"pyright",
		"gopls",
		"dockerls",
		"grammarly",
	},
	-- auto-install configured servers (with lspconfig)
	automatic_installation = true, -- not the same as ensure_installed
})

mason_null_ls.setup({
	-- list of formatters & linters for mason to install
	ensure_installed = {
		"prettier", -- ts/js formatter
		"stylua", -- lua formatter
		"eslint_d", -- ts/js linter
		"hadolint", -- docker formatter
		"phpstan", -- php linter
		"phpcs", -- php linter
		"phpcsfixer", -- php formatter
		"yamllint", -- yaml linter
		"zsh", -- zsh linter
		"cbfmt", -- md codeblocks formatter
		"golines", -- golang formatter
		"jq", -- json formatter
		"markdownlint", -- md formatter
		"nginx_beautifier", -- nginx formatter
	},
	-- auto-install configured formatters & linters (with null-ls)
	automatic_installation = true,
})
