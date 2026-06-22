local M = {}

local palette = require("baltic.palette")

local function hl(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(opts)
  M.options = opts or {}
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "baltic"

  local p = palette

  hl("Normal", { fg = p.fg, bg = p.bg })
  hl("NormalNC", { fg = p.fg, bg = p.bg })
  hl("NormalFloat", { fg = p.fg, bg = p.surface })
  hl("FloatBorder", { fg = p.surface_high, bg = p.surface })
  hl("ColorColumn", { bg = p.surface })
  hl("Cursor", { fg = p.bg, bg = p.accent })
  hl("CursorLine", { bg = p.surface })
  hl("CursorColumn", { bg = p.surface })
  hl("LineNr", { fg = p.muted })
  hl("CursorLineNr", { fg = p.func, bold = true })
  hl("SignColumn", { fg = p.muted, bg = p.bg })
  hl("FoldColumn", { fg = p.muted, bg = p.bg })
  hl("Folded", { fg = p.muted, bg = p.surface })
  hl("Visual", { bg = p.selection })
  hl("Search", { fg = p.bg, bg = p.accent })
  hl("IncSearch", { fg = p.bg, bg = p.string })
  hl("Substitute", { fg = p.bg, bg = p.red })
  hl("Pmenu", { fg = p.fg, bg = p.surface })
  hl("PmenuSel", { fg = p.bright, bg = p.selection, bold = true })
  hl("PmenuSbar", { bg = p.surface_high })
  hl("PmenuThumb", { bg = p.func })
  hl("StatusLine", { fg = p.fg, bg = p.surface })
  hl("StatusLineNC", { fg = p.muted, bg = p.surface })
  hl("WinSeparator", { fg = p.surface_high })
  hl("VertSplit", { fg = p.surface_high })
  hl("TabLine", { fg = p.muted, bg = p.surface })
  hl("TabLineFill", { fg = p.muted, bg = p.bg })
  hl("TabLineSel", { fg = p.bg, bg = p.fg, bold = true })
  hl("Directory", { fg = p.func, bold = true })
  hl("Title", { fg = p.func, bold = true })
  hl("ErrorMsg", { fg = p.red, bold = true })
  hl("WarningMsg", { fg = p.accent, bold = true })
  hl("ModeMsg", { fg = p.string, bold = true })
  hl("MoreMsg", { fg = p.green })
  hl("Question", { fg = p.func })
  hl("NonText", { fg = p.surface_high })
  hl("Whitespace", { fg = p.surface_high })
  hl("SpecialKey", { fg = p.surface_high })

  hl("Comment", { fg = p.muted, italic = true })
  hl("Constant", { fg = p.constant })
  hl("String", { fg = p.string })
  hl("Character", { fg = p.string })
  hl("Number", { fg = p.constant })
  hl("Boolean", { fg = p.constant })
  hl("Float", { fg = p.constant })
  hl("Identifier", { fg = p.fg })
  hl("Function", { fg = p.func })
  hl("Statement", { fg = p.keyword, bold = true })
  hl("Conditional", { fg = p.keyword, bold = true })
  hl("Repeat", { fg = p.keyword, bold = true })
  hl("Label", { fg = p.red })
  hl("Operator", { fg = p.fg })
  hl("Keyword", { fg = p.keyword, bold = true })
  hl("Exception", { fg = p.keyword, bold = true })
  hl("PreProc", { fg = p.accent })
  hl("Include", { fg = p.keyword, bold = true })
  hl("Define", { fg = p.keyword, bold = true })
  hl("Macro", { fg = p.accent })
  hl("PreCondit", { fg = p.accent })
  hl("Type", { fg = p.func })
  hl("StorageClass", { fg = p.keyword, bold = true })
  hl("Structure", { fg = p.func })
  hl("Typedef", { fg = p.func })
  hl("Special", { fg = p.builtin })
  hl("SpecialChar", { fg = p.builtin })
  hl("Tag", { fg = p.func })
  hl("Delimiter", { fg = p.muted })
  hl("Debug", { fg = p.red })
  hl("Underlined", { fg = p.func, underline = true })
  hl("Ignore", { fg = p.muted })
  hl("Error", { fg = p.red, bold = true })
  hl("Todo", { fg = p.bg, bg = p.string, bold = true })

  hl("DiffAdd", { fg = p.green })
  hl("DiffChange", { fg = p.string })
  hl("DiffDelete", { fg = p.red })
  hl("DiffText", { fg = p.accent, bold = true })

  hl("DiagnosticError", { fg = p.red })
  hl("DiagnosticWarn", { fg = p.accent })
  hl("DiagnosticInfo", { fg = p.func })
  hl("DiagnosticHint", { fg = p.muted })
  hl("DiagnosticUnderlineError", { sp = p.red, undercurl = true })
  hl("DiagnosticUnderlineWarn", { sp = p.accent, undercurl = true })
  hl("DiagnosticUnderlineInfo", { sp = p.func, undercurl = true })
  hl("DiagnosticUnderlineHint", { sp = p.muted, undercurl = true })

  hl("@comment", { link = "Comment" })
  hl("@keyword", { fg = p.keyword, bold = true })
  hl("@keyword.import", { fg = p.keyword, bold = true })
  hl("@keyword.function", { fg = p.keyword, bold = true })
  hl("@keyword.return", { fg = p.keyword, bold = true })
  hl("@function", { fg = p.func })
  hl("@function.call", { fg = p.func })
  hl("@function.builtin", { fg = p.builtin, bold = true })
  hl("@constructor", { fg = p.func })
  hl("@type", { fg = p.func })
  hl("@type.builtin", { fg = p.builtin })
  hl("@variable", { fg = p.fg })
  hl("@variable.builtin", { fg = p.builtin, bold = true })
  hl("@variable.parameter", { fg = p.fg })
  hl("@property", { fg = p.fg })
  hl("@field", { fg = p.fg })
  hl("@string", { link = "String" })
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })
  hl("@constant", { link = "Constant" })
  hl("@constant.builtin", { fg = p.constant, bold = true })
  hl("@operator", { link = "Operator" })
  hl("@punctuation", { fg = p.fg })
  hl("@punctuation.bracket", { fg = p.muted })
  hl("@tag", { fg = p.func })
  hl("@tag.attribute", { fg = p.builtin })
  hl("@markup.heading", { fg = p.func, bold = true })
  hl("@markup.raw", { fg = p.string })
  hl("@markup.link", { fg = p.func, underline = true })

  hl("LspReferenceRead", { bg = p.surface_high })
  hl("LspReferenceText", { bg = p.surface_high })
  hl("LspReferenceWrite", { bg = p.selection })

  vim.g.terminal_color_0 = p.bg
  vim.g.terminal_color_1 = p.red
  vim.g.terminal_color_2 = p.green
  vim.g.terminal_color_3 = p.string
  vim.g.terminal_color_4 = p.func
  vim.g.terminal_color_5 = p.constant
  vim.g.terminal_color_6 = p.func
  vim.g.terminal_color_7 = p.fg
  vim.g.terminal_color_8 = p.surface_high
  vim.g.terminal_color_9 = p.bright_red
  vim.g.terminal_color_10 = p.bright_green
  vim.g.terminal_color_11 = p.bright_yellow
  vim.g.terminal_color_12 = p.builtin
  vim.g.terminal_color_13 = p.bright_magenta
  vim.g.terminal_color_14 = p.builtin
  vim.g.terminal_color_15 = p.bright
end

return M

