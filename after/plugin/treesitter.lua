require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c", "lua", "vim", "help", "javascript", "typescript", "css", "tsx", "json", "astro" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
