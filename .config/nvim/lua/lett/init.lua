require("lett.remap")
require("lett.set")
require("lett.lazy_init")
require("lett.autocmd")
require("lett.ui")
require("lett.lsp")

vim.filetype.add({
  pattern = { [".*/hypr/.*%.conf"] = "hyprlang" },
})
