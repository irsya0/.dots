_G.NVIM_STATE = {}

require("bootstrap")

--- KEEP ORDER ---
-- Some options
require("core")
-- UI provides icons & theming functions used by everything else
require("ui")
-- Hooks, Autosaving, Directory Creation, Git etc.
require("workflow")
-- Plugins...
require("plugins")
-- LSP Functionality - Depends on plugins!
require("lsp")
