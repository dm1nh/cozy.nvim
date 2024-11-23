local Util = require("cozy.util")

local M = {}

---@type cozy.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    Foo                         = { bg = c.accent, fg = c.fg },

    Comment                     = { fg = c.syn.comment, style = opts.styles.comments }, -- any comment
    ColorColumn                 = { bg = c.dark5 }, -- used for the columns set with 'colorcolumn'
    Conceal                     = { fg = c.dark5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                      = { fg = c.bg, bg = c.fg }, -- character under the cursor
    lCursor                     = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.blue1 }, -- directory names (and other special names in listings)
    DiffAdd                     = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange                  = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete                  = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText                    = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                 = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg                    = { fg = c.diag.error }, -- error messages on the command line
    VertSplit                   = { fg = c.fg_border }, -- the column separating vertically split windows
    WinSeparator                = { fg = c.fg_border, bold = true }, -- the column separating vertically split windows
    Folded                      = { fg = c.accent, bg = c.fg_gutter }, -- line used for closed folds
    FoldColumn                  = { bg = opts.transparent and c.none or c.bg, fg = c.syn.comment }, -- 'foldcolumn'
    SignColumn                  = { bg = opts.transparent and c.none or c.bg, fg = c.fg_gutter }, -- column where |signs| are displayed
    SignColumnSB                = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
    Substitute                  = { bg = c.red1, fg = c.bg }, -- |:substitute| replacement text highlighting
    LineNr                      = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr                = { fg = c.accent, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNrAbove                 = { fg = c.fg_gutter },
    LineNrBelow                 = { fg = c.fg_gutter },
    MatchParen                  = { fg = c.red1, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                     = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                     = { fg = c.fg_dark }, -- Area for messages and cmdline
    MoreMsg                     = { fg = c.blue1 }, -- |more-prompt|
    NonText                     = { fg = c.syn.deprecated }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                      = { fg = c.fg, bg = opts.transparent and c.none or c.bg }, -- normal text
    NormalNC                    = { fg = c.fg, bg = opts.transparent and c.none or opts.dim_inactive and c.bg_dark or c.bg }, -- normal text in non-current windows
    NormalSB                    = { fg = c.fg, bg = c.bg_sidebar }, -- normal text in sidebar
    NormalFloat                 = { fg = c.float.fg, bg = c.float.bg }, -- Normal text in floating windows.
    FloatBorder                 = { fg = c.fg_border_highlight, bg = c.float.bg },
    FloatTitle                  = { fg = c.fg_border_highlight, bg = c.float.bg },
    Pmenu                       = { bg = c.pmenu.bg, fg = c.pmenu.fg }, -- Popup menu: normal item.
    PmenuMatch                  = { bg = c.pmenu.bg, fg = c.accent }, -- Popup menu: Matched text in normal item.
    PmenuSel                    = { bg = c.pmenu.bg_sel }, -- Popup menu: selected item.
    PmenuMatchSel               = { bg = c.pmenu.bg_sel, fg = c.blue1 }, -- Popup menu: Matched text in selected item.
    PmenuSbar                   = { bg = c.pmenu.bg_sbar }, -- Popup menu: scrollbar.
    PmenuThumb                  = { bg = c.pmenu.bg_thumb }, -- Popup menu: Thumb of the scrollbar.
    Question                    = { fg = c.accent }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine                = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                      = { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                   = { bg = c.orange1, fg = c.fg_dark }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch                   =  "IncSearch",
    SpecialKey                  = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                    = { sp = c.diag.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                    = { sp = c.diag.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                  = { sp = c.diag.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                   = { sp = c.diag.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                  = { fg = c.fg, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC                = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                     = { bg = c.bg_statusline, fg = c.fg_gutter }, -- tab pages line, not active tab page label
    TabLineFill                 = { bg = c.fg_dark }, -- tab pages line, where there are no labels
    TabLineSel                  = { fg = c.fg_dark, bg = c.accent }, -- tab pages line, active tab page label
    Title                       = { fg = c.accent, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual                      = { bg = c.bg_visual }, -- Visual mode selection
    VisualNOS                   = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                  = { fg = c.diag.warning }, -- warning messages
    Whitespace                  = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                    = { bg = c.bg_visual }, -- current match in 'wildmenu' completion
    WinBar                      = "StatusLine" , -- window bar
    WinBarNC                    = "StatusLineNC", -- window bar in inactive windows

    Bold                        = { bold = true, fg = c.fg }, -- (preferred) any bold text
    Character                   = { fg = c.syn.string }, --  a character constant: 'c', '\n'
    Constant                    = { fg = c.syn.constant }, -- (preferred) any constant
    Debug                       = { fg = c.syn.special1 }, --    debugging statements
    Delimiter                   =  "Special", --  character that needs attention
    Error                       = { fg = c.diag.error }, -- (preferred) any erroneous construct
    Function                    = { fg = c.syn.func, style = opts.styles.functions }, -- function name (also: methods for classes)
    Identifier                  = { fg = c.syn.identifier, style = opts.styles.variables }, -- (preferred) any variable name
    Italic                      = { italic = true, fg = c.fg }, -- (preferred) any italic text
    Keyword                     = { fg = c.syn.keyword, style = opts.styles.keywords }, --  any other keyword
    Operator                    = { fg = c.syn.operator }, -- "sizeof", "+", "*", etc.
    PreProc                     = { fg = c.syn.preproc }, -- (preferred) generic Preprocessor
    Special                     = { fg = c.syn.special1 }, -- (preferred) any special symbol
    Statement                   = { fg = c.syn.statement }, -- (preferred) any statement
    String                      = { fg = c.syn.string }, --   a string constant: "this is a string"
    Todo                        = { bg = c.yellow1, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type                        = { fg = c.syn.type }, -- (preferred) int, long, char, etc.
    Underlined                  = { underline = true }, -- (preferred) text that stands out, HTML links
    debugBreakpoint             = { bg = Util.blend_bg(c.diag.info, 0.1), fg = c.diag.info }, -- used for breakpoint colors in terminal-debug
    debugPC                     = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    dosIniLabel                 = "@property",
    helpCommand                 = { bg = c.dark4, fg = c.blue1 },
    htmlH1                      = { fg = c.magenta1, bold = true },
    htmlH2                      = { fg = c.blue1, bold = true },
    qfFileName                  = { fg = c.blue1 },
    qfLineNr                    = { fg = c.dark5 },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own.
    LspReferenceText            = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceRead            = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite           = { bg = c.fg_gutter }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = Util.blend_bg(c.bg_visual, 0.4), bold = true },
    LspCodeLens                 = { fg = c.syn.comment },
    LspInlayHint                = { bg = Util.blend_bg(c.cyan1, 0.1), fg = c.dark3 },
    LspInfoBorder               = { fg = c.fg_border_highlight, bg = c.float.bg },

    -- diagnostics
    DiagnosticError             = { fg = c.diag.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.diag.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.diag.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.diag.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary       = { fg = c.syn.deprecated }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError  = { bg = Util.blend_bg(c.diag.error, 0.1), fg = c.diag.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { bg = Util.blend_bg(c.diag.warning, 0.1), fg = c.diag.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { bg = Util.blend_bg(c.diag.info, 0.1), fg = c.diag.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { bg = Util.blend_bg(c.diag.hint, 0.1), fg = c.diag.hint }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError    = { undercurl = true, sp = c.diag.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.diag.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.diag.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint     = { undercurl = true, sp = c.diag.hint }, -- Used to underline "Hint" diagnostics

    -- Health
    healthError                 = { fg = c.diag.error },
    healthSuccess               = { fg = c.green1 },
    healthWarning               = { fg = c.diag.warning },

    -- diff (not needed anymore?)
    diffAdded                   = { fg = c.git.add },
    diffRemoved                 = { fg = c.git.delete },
    diffChanged                 = { fg = c.git.change },
    diffOldFile                 = { fg = c.yellow0 },
    diffNewFile                 = { fg = c.orange0 },
    diffFile                    = { fg = c.blue0 },
    diffLine                    = { fg = c.syn.comment },
    diffIndexLine               = { fg = c.magenta0 },
    helpExample                 = { fg = c.syn.comment },
  }
end

return M
