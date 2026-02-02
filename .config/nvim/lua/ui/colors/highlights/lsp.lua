local base32 = require("ui.colors.engine").get_theme_tb "base_30"

return {
  -- LSP References
  LspReferenceText = { fg = base32.darker_black, bg = base32.white },
  LspReferenceRead = { fg = base32.darker_black, bg = base32.white },
  LspReferenceWrite = { fg = base32.darker_black, bg = base32.white },

  -- Lsp Diagnostics
  DiagnosticHint = { fg = base32.purple },
  DiagnosticError = { fg = base32.red },
  DiagnosticWarn = { fg = base32.yellow },
  DiagnosticInformation = { fg = base32.green },
  LspSignatureActiveParameter = { fg = base32.black, bg = base32.green },

  RenamerTitle = { fg = base32.black, bg = base32.red },
  RenamerBorder = { fg = base32.red },
}
