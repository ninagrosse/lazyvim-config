-- mason 2.0 has breaking changes, that are not compatible with LazyVim at the moment.
-- Pin mason to v1 to avoid the problem. Remove this file when LazyVim fixed it.
-- See https://github.com/LazyVim/LazyVim/issues/6039
return {
  { "mason-org/mason.nvim", version = "^1.0.0" },
  { "mason-org/mason-lspconfig.nvim", version = "^1.0.0" },
}
