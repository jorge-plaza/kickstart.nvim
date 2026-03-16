vim.o.termguicolors = true

vim.g.colors_name = 'intellij-new-ui-dark'

local palette = {
  bg = '#1e1f22',
  bg_alt = '#2b2d30',
  bg_alt2 = '#393b40',
  bg_alt3 = '#42454a',
  bg_line = '#26282d',
  bg_selection = '#214283',
  bg_selection_alt = '#2e436e',
  fg = '#bcbec3',
  fg_alt = '#dfe1e5',
  fg_dim = '#9ea0a8',
  fg_muted = '#7a7e85',
  fg_dark = '#4b5059',
  blue = '#3574f0',
  blue_light = '#538af6',
  blue_soft = '#6a9bfa',
  green = '#6aab73',
  green_soft = '#629755',
  teal = '#2ebaa3',
  cyan = '#2cabb8',
  orange = '#ce8e6d',
  yellow = '#d5b778',
  yellow_soft = '#c29e49',
  red = '#d64d5b',
  pink = '#c77dbb',
  lavender = '#d0cfff',
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

hi('Normal', { fg = palette.fg, bg = palette.bg })
hi('NormalNC', { fg = palette.fg, bg = palette.bg })
hi('NormalFloat', { fg = palette.fg_alt, bg = palette.bg_alt })
hi('FloatBorder', { fg = palette.bg_alt3, bg = palette.bg_alt })
hi('FloatTitle', { fg = palette.fg_alt, bg = palette.bg_alt })

hi('ColorColumn', { bg = palette.bg_alt2 })
hi('Cursor', { fg = palette.bg, bg = palette.fg_alt })
hi('CursorColumn', { bg = palette.bg_line })
hi('CursorLine', { bg = palette.bg_line })
hi('CursorLineNr', { fg = palette.fg_dim, bg = palette.bg_line })
hi('LineNr', { fg = palette.fg_dark })

hi('Directory', { fg = palette.blue_soft })
hi('DiffAdd', { bg = '#3a6083', fg = palette.fg_alt })
hi('DiffChange', { bg = '#283541', fg = palette.fg_alt })
hi('DiffDelete', { bg = '#373737', fg = palette.fg_alt })
hi('DiffText', { bg = '#5faffa', fg = palette.bg })

hi('ErrorMsg', { fg = palette.red })
hi('WarningMsg', { fg = palette.yellow_soft })
hi('MoreMsg', { fg = palette.blue_soft })
hi('Question', { fg = palette.green })

hi('Folded', { fg = palette.fg_dim, bg = palette.bg_alt2 })
hi('FoldColumn', { fg = palette.fg_dim, bg = palette.bg })
hi('SignColumn', { fg = palette.fg_dim, bg = palette.bg })

hi('IncSearch', { fg = palette.bg, bg = palette.blue })
hi('Search', { fg = palette.fg_alt, bg = palette.bg_selection })
hi('CurSearch', { fg = palette.bg, bg = palette.blue_light })
hi('MatchParen', { fg = palette.fg_alt, bg = palette.bg_alt3 })

hi('Pmenu', { fg = palette.fg_alt, bg = palette.bg_alt })
hi('PmenuSel', { fg = palette.fg_alt, bg = palette.bg_selection_alt })
hi('PmenuSbar', { bg = palette.bg_alt2 })
hi('PmenuThumb', { bg = palette.bg_alt3 })

hi('StatusLine', { fg = palette.fg_dim, bg = palette.bg_alt })
hi('StatusLineNC', { fg = palette.fg_dark, bg = palette.bg_alt })
hi('WinSeparator', { fg = palette.bg_alt2 })

hi('TabLine', { fg = palette.fg_dim, bg = palette.bg_alt })
hi('TabLineSel', { fg = palette.fg_alt, bg = palette.bg })
hi('TabLineFill', { bg = palette.bg_alt })

hi('Visual', { bg = palette.bg_selection })
hi('VisualNOS', { bg = palette.bg_selection })

hi('Title', { fg = palette.pink, italic = true })
hi('NonText', { fg = palette.bg_alt3 })
hi('SpecialKey', { fg = palette.bg_alt3 })

hi('Comment', { fg = palette.fg_muted })
hi('Constant', { fg = palette.cyan })
hi('String', { fg = palette.green })
hi('Character', { fg = palette.green })
hi('Number', { fg = palette.cyan })
hi('Boolean', { fg = palette.cyan })
hi('Float', { fg = palette.cyan })

hi('Identifier', { fg = palette.fg })
hi('Function', { fg = palette.blue_soft })

hi('Statement', { fg = palette.orange })
hi('Conditional', { fg = palette.orange })
hi('Repeat', { fg = palette.orange })
hi('Label', { fg = palette.orange })
hi('Operator', { fg = palette.fg })
hi('Keyword', { fg = palette.orange })
hi('Exception', { fg = palette.orange })

hi('PreProc', { fg = palette.orange })
hi('Include', { fg = palette.orange })
hi('Define', { fg = palette.orange })
hi('Macro', { fg = palette.orange })
hi('PreCondit', { fg = palette.orange })

hi('Type', { fg = palette.fg })
hi('StorageClass', { fg = palette.orange })
hi('Structure', { fg = palette.fg })
hi('Typedef', { fg = palette.fg })

hi('Special', { fg = palette.yellow })
hi('SpecialChar', { fg = palette.yellow })
hi('Tag', { fg = palette.teal })
hi('Delimiter', { fg = palette.fg })
hi('SpecialComment', { fg = '#5f826b', italic = true })
hi('Debug', { fg = palette.red })

hi('DiagnosticError', { fg = palette.red })
hi('DiagnosticWarn', { fg = palette.yellow_soft })
hi('DiagnosticInfo', { fg = palette.blue })
hi('DiagnosticHint', { fg = palette.blue_soft })
hi('DiagnosticUnderlineError', { sp = palette.red, undercurl = true })
hi('DiagnosticUnderlineWarn', { sp = palette.yellow_soft, undercurl = true })
hi('DiagnosticUnderlineInfo', { sp = palette.blue, undercurl = true })
hi('DiagnosticUnderlineHint', { sp = palette.blue_soft, undercurl = true })

hi('@comment', { fg = palette.fg_muted })
hi('@comment.documentation', { fg = '#5f826b', italic = true })
hi('@comment.documentation.storage', { fg = '#68a67e', italic = true })

hi('@keyword', { fg = palette.orange })
hi('@keyword.operator', { fg = palette.fg })
hi('@keyword.function', { fg = palette.orange })
hi('@keyword.return', { fg = palette.orange })

hi('@variable', { fg = '#a9b7c5' })
hi('@variable.builtin', { fg = palette.pink, italic = true })
hi('@variable.parameter', { fg = palette.fg })
hi('@variable.member', { fg = palette.pink })

hi('@type', { fg = palette.fg })
hi('@type.builtin', { fg = palette.fg, italic = true })
hi('@type.parameter', { fg = '#507874' })
hi('@type.definition', { fg = palette.fg })

hi('@constructor', { fg = palette.teal })
hi('@property', { fg = palette.pink })
hi('@field', { fg = palette.pink })
hi('@namespace', { fg = palette.pink, italic = true })

hi('@string', { fg = palette.green })
hi('@string.escape', { fg = palette.orange })
hi('@string.regexp', { fg = palette.cyan })
hi('@string.special', { fg = palette.blue_soft })

hi('@number', { fg = palette.cyan })
hi('@boolean', { fg = palette.cyan })
hi('@constant', { fg = palette.cyan })
hi('@constant.builtin', { fg = palette.orange })
hi('@constant.macro', { fg = palette.orange })

hi('@function', { fg = palette.blue_soft })
hi('@function.builtin', { fg = palette.blue_soft })
hi('@function.call', { fg = palette.blue_soft })
hi('@function.macro', { fg = palette.orange })
hi('@method', { fg = palette.blue_soft })
hi('@method.call', { fg = palette.blue_soft })

hi('@punctuation.delimiter', { fg = palette.fg })
hi('@punctuation.bracket', { fg = palette.fg })
hi('@punctuation.special', { fg = palette.fg })

hi('@tag', { fg = palette.yellow })
hi('@tag.attribute', { fg = palette.yellow })
hi('@tag.delimiter', { fg = palette.fg })

hi('@markup.heading', { fg = palette.pink, italic = true })
hi('@markup.bold', { bold = true })
hi('@markup.italic', { italic = true })
hi('@markup.strikethrough', { strikethrough = true })
hi('@markup.link', { fg = '#57a8f5', underline = true })
hi('@markup.raw', { fg = palette.green })

hi('@diff.plus', { fg = palette.green_soft })
hi('@diff.minus', { fg = '#6c6c6c' })
hi('@diff.delta', { fg = '#6897bb' })

vim.g.terminal_color_0 = palette.bg
vim.g.terminal_color_1 = palette.red
vim.g.terminal_color_2 = palette.green_soft
vim.g.terminal_color_3 = palette.yellow_soft
vim.g.terminal_color_4 = palette.blue
vim.g.terminal_color_5 = palette.pink
vim.g.terminal_color_6 = palette.cyan
vim.g.terminal_color_7 = palette.fg
vim.g.terminal_color_8 = palette.fg_dark
vim.g.terminal_color_9 = palette.red
vim.g.terminal_color_10 = palette.green
vim.g.terminal_color_11 = palette.yellow
vim.g.terminal_color_12 = palette.blue_soft
vim.g.terminal_color_13 = palette.pink
vim.g.terminal_color_14 = palette.teal
vim.g.terminal_color_15 = palette.fg_alt
