-- dont forget to install language servers for desired languages
-- LspInstallInfo
M = {}
M.plugins = {
  "neovim/nvim-lspconfig" -- enable LSP
  ,"williamboman/nvim-lsp-installer" -- simple to use language server installer
  ,"tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  ,"jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
  ,"antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  ,"jose-elias-alvarez/typescript.nvim"
}
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return M
end

require "user.lsp.lsp-installer"
require("user.lsp.handlers").setup()
require "user.lsp.null-ls"
-- require "user.lsp.emmet"

return M
