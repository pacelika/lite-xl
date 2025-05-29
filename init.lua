local config = require "core.config"
local lspconfig = require "plugins.lsp.config"

config.ignore_files = {
  -- folders
  "^%.svn/",        "^%.git/",   "^%.hg/",        "^CVS/", "^%.Trash/", "^%.Trash%-.*/",
  "^node_modules/", "^%.cache/", "^__pycache__/", "^%.zig%-cache$",

  -- files
  "%.pyc$",         "%.pyo$",       "%.exe$",        "%.dll$",   "%.obj$", "%.o$",
  "%.a$",           "%.lib$",       "%.so$",         "%.dylib$", "%.ncb$", "%.sdf$",
  "%.suo$",         "%.pdb$",       "%.idb$",        "%.class$", "%.psd$", "%.db$",
  "^desktop%.ini$", "^%.DS_Store$", "^%.directory$",
}

config.fps = 120
config.plugins.scale.default_scale = 1.69

config.tab_type = "hard"
config.indent_size = 4

lspconfig.clangd.setup()
lspconfig.zls.setup()
lspconfig.sumneko_lua.setup()
