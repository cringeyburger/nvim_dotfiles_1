local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.offsetEncoding = { "utf-8" }
require("user.lsp.mason")
require("user.lsp.handlers").setup()
require("user.lsp.null-ls")
require("lspconfig").clangd.setup({ capabilities = capabilities })
require("lspconfig").html.setup({
	capabilities = capabilities,
})
