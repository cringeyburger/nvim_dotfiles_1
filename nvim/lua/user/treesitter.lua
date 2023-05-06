local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
	config.install_info.use_makefile = true
	config.install_info.cxx_standard = "c++17"
end

if vim.loop.os_uname().sysname == "Windows_NT" then
	require("nvim-treesitter.install").compilers = { "clang" }
end

configs.setup({
	ensure_installed = {
		"bash",
		"c",
		"javascript",
		"json",
		"lua",
		"python",
		"typescript",
		"tsx",
		"css",
		"rust",
		"java",
		"yaml",
		"markdown",
		"markdown_inline",
		"cpp",
	}, -- one of "all" or a list of languages
	ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
