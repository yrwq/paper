local paper = {
  base0      = '#252221',
  base1      = '#262322',
  base2      = '#302c2b',
  base3      = '#3d3837',
  base4      = '#413c3a',
  base5      = '#c8bAA4',
  base6      = '#cdc0ad',
  base7      = '#beae94',
  base8      = '#d1c6b4',

  comment = "#8a817c",

  bg = '#252221',
  bg1 = '#302c2b',
  bg_popup = '#413c3a',
  bg_highlight  = '#3d3837',
  bg_visual = '#3d3837',

  fg = '#c8bAA4',
  fg_alt  = '#d1c6b4',

  red = '#c65f5f',

  redwine = '#c65f5f',
  orange = '#d08b65',
  yellow = '#d9b27c',

  light_green = '#859e82',
  green = '#859e82',
  dark_green = '#859e82',

  cyan = '#829e9b',
  blue = '#728797',
  violet = '#998396',
  magenta = '#998396',
  teal = '#728797',
  grey = '#3d3837',
  brown = '#413c3a',
  black = '#262322',

  bracket = '#998396',
  currsor_bg = '#c8bAA4',
  none = 'NONE',
}

function paper.terminal_color()
  vim.g.terminal_color_0 = paper.bg
  vim.g.terminal_color_1 = paper.red
  vim.g.terminal_color_2 = paper.green
  vim.g.terminal_color_3 = paper.yellow
  vim.g.terminal_color_4 = paper.blue
  vim.g.terminal_color_5 = paper.violet
  vim.g.terminal_color_6 = paper.cyan
  vim.g.terminal_color_7 = paper.bg1
  vim.g.terminal_color_8 = paper.brown
  vim.g.terminal_color_9 = paper.red
  vim.g.terminal_color_10 = paper.green
  vim.g.terminal_color_11 = paper.yellow
  vim.g.terminal_color_12 = paper.blue
  vim.g.terminal_color_13 = paper.violet
  vim.g.terminal_color_14 = paper.cyan
  vim.g.terminal_color_15 = paper.fg
end

function paper.highlight(group, color)
  if color.link then
    vim.api.nvim_set_hl(0, group, { link = color.link })
    return
  end

  vim.api.nvim_set_hl(0, group, {
    fg = color.fg,
    bg = color.bg,
    sp = color.sp,
    bold = color.style == "bold" or (type(color.style) == "string" and color.style:find("bold")),
    italic = type(color.style) == "string" and color.style:find("italic") ~= nil,
    underline = type(color.style) == "string" and color.style:find("underline") ~= nil,
    undercurl = type(color.style) == "string" and color.style:find("undercurl") ~= nil,
    reverse = type(color.style) == "string" and color.style:find("reverse") ~= nil,
    strikethrough = type(color.style) == "string" and color.style:find("strikethrough") ~= nil,
  })
end

function paper.load_syntax()
  local syntax = {
    Normal = {fg = paper.fg,bg=paper.bg},
    Terminal = {fg = paper.fg,bg=paper.bg},
    SignColumn = {fg=paper.fg,bg=paper.bg},
    FoldColumn = {fg=paper.fg_alt,bg=paper.black},
    VertSplit = {fg=paper.black,bg=paper.bg},
    Folded = {fg=paper.grey,bg=paper.bg_highlight},
    EndOfBuffer = {fg=paper.bg,bg=paper.none},
    IncSearch = {fg=paper.bg1,bg=paper.orange,style=paper.none},
    Search = {fg=paper.bg,bg=paper.orange},
    ColorColumn = {fg=paper.none,bg=paper.bg_highlight},
    Conceal = {fg=paper.grey,bg=paper.none},
    Cursor = {fg=paper.none,bg=paper.none,style='reverse'},
    vCursor = {fg=paper.none,bg=paper.none,style='reverse'},
    iCursor = {fg=paper.none,bg=paper.none,style='reverse'},
    lCursor = {fg=paper.none,bg=paper.none,style='reverse'},
    CursorIM = {fg=paper.none,bg=paper.none,style='reverse'},
    CursorColumn = {fg=paper.none,bg=paper.bg_highlight},
    CursorLine = {fg=paper.none,bg=paper.bg_highlight},
    LineNr = {fg=paper.base4},
    qfLineNr = {fg=paper.cyan},
    CursorLineNr = {fg=paper.blue},
    DiffAdd = {fg=paper.black,bg=paper.dark_green},
    DiffChange = {fg=paper.black,bg=paper.yellow},
    DiffDelete = {fg=paper.black,bg=paper.red},
    DiffText = {fg=paper.black,bg=paper.fg},
    Directory = {fg=paper.blue,bg=paper.none},
    ErrorMsg = {fg=paper.red,bg=paper.none,style='bold'},
    WarningMsg = {fg=paper.yellow,bg=paper.none,style='bold'},
    ModeMsg = {fg=paper.fg,bg=paper.none,style='bold'},
    MatchParen = {fg=paper.red,bg=paper.none},
    NonText = {fg=paper.bg1},
    Whitespace = {fg=paper.base4},
    SpecialKey = {fg=paper.bg1},
    Pmenu = {fg=paper.fg,bg=paper.bg_popup},
    PmenuSel = {fg=paper.base0,bg=paper.blue},
    PmenuSelBold = {fg=paper.base0,g=paper.blue},
    PmenuSbar = {fg=paper.none,bg=paper.base4},
    PmenuThumb = {fg=paper.violet,bg=paper.light_green},
    WildMenu = {fg=paper.fg,bg=paper.green},
    Question = {fg=paper.yellow},
    NormalFloat = {fg=paper.base8,bg=paper.bg_highlight},
    Tabline = {fg=paper.base6,bg=paper.base2},
    TabLineFill = {style=paper.none},
    TabLineSel = {fg=paper.fg,bg=paper.blue},
    StatusLine = {fg=paper.base8,bg=paper.base2,style=paper.none},
    StatusLineNC = {fg=paper.grey,bg=paper.base2,style=paper.none},
    SpellBad = {fg=paper.red,bg=paper.none,style='undercurl'},
    SpellCap = {fg=paper.blue,bg=paper.none,style='undercurl'},
    SpellLocal = {fg=paper.cyan,bg=paper.none,style='undercurl'},
    SpellRare = {fg=paper.violet,bg=paper.none,style = 'undercurl'},
    Visual = {fg=paper.black,bg=paper.bg_visual},
    VisualNOS = {fg=paper.black,bg=paper.bg_visual},
    QuickFixLine = {fg=paper.violet,style='bold'},
    Debug = {fg=paper.orange},
    debugBreakpoint = {fg=paper.bg,bg=paper.red},

    Boolean = {fg=paper.orange},
    Number = {fg=paper.violet},
    Float = {fg=paper.violet},
    PreProc = {fg=paper.violet},
    PreCondit = {fg=paper.violet},
    Include = {fg=paper.violet},
    Define = {fg=paper.violet},
    Conditional = {fg=paper.magenta},
    Repeat = {fg=paper.magenta},
    Keyword = {fg=paper.green},
    Typedef = {fg=paper.red},
    Exception = {fg=paper.red},
    Statement = {fg=paper.red},
    Error = {fg=paper.red},
    StorageClass = {fg=paper.orange},
    Tag = {fg=paper.orange},
    Label = {fg=paper.orange},
    Structure = {fg=paper.orange},
    Operator = {fg=paper.redwine},
    Title = {fg=paper.orange,style='bold'},
    Special = {fg=paper.yellow},
    SpecialChar = {fg=paper.yellow},
    Type = {fg=paper.teal},
    Function = {fg=paper.yellow},
    String = {fg=paper.light_green},
    Character = {fg=paper.green},
    Constant = {fg=paper.cyan},
    Macro = {fg=paper.cyan},
    Identifier = {fg=paper.orange},

    -- Comment = {fg=paper.fg, bg=paper.bg_highlight},
    Comment = { fg = paper.comment, bg = paper.none, style = "italic" },
    SpecialComment = {fg=paper.grey},
    Todo = {fg=paper.violet},
    Delimiter = {fg=paper.fg},
    Ignore = {fg=paper.grey},
    Underlined = {fg=paper.none,style='underline'},

    DashboardShortCut = {fg=paper.magenta},
    DashboardHeader = {fg=paper.orange},
    DashboardCenter = {fg=paper.cyan},
    DashboardFooter = {fg=paper.yellow,style='bold'},

  }
  return syntax
end

function paper.load_plugin_syntax()
  local plugin_syntax = {
    TSFunction = {fg=paper.cyan},
    TSMethod = {fg=paper.cyan},
    TSKeywordFunction = {fg=paper.red},
    TSProperty = {fg=paper.yellow},
    TSType = {fg=paper.teal},
    TSVariable = {fg=paper.orange},
    TSPunctBracket = {fg=paper.bracket},

    vimCommentTitle = {fg=paper.grey,style='bold'},
    vimLet = {fg=paper.orange},
    vimVar = {fg=paper.cyan},
    vimFunction = {fg=paper.redwine},
    vimIsCommand = {fg=paper.fg},
    vimCommand = {fg=paper.blue},
    vimNotFunc = {fg=paper.violet,style='bold'},
    vimUserFunc = {fg=paper.yellow,style='bold'},
    vimFuncName= {fg=paper.yellow,style='bold'},

    diffAdded = {fg = paper.dark_green},
    diffRemoved = {fg =paper.red},
    diffChanged = {fg = paper.blue},
    diffOldFile = {fg = paper.yellow},
    diffNewFile = {fg = paper.orange},
    diffFile    = {fg = paper.aqua},
    diffLine    = {fg = paper.grey},
    diffIndexLine = {fg = paper.violet},

    gitcommitSummary = {fg = paper.red},
    gitcommitUntracked = {fg = paper.grey},
    gitcommitDiscarded = {fg = paper.grey},
    gitcommitSelected = { fg=paper.grey},
    gitcommitUnmerged = { fg=paper.grey},
    gitcommitOnBranch = { fg=paper.grey},
    gitcommitArrow  = {fg = paper.grey},
    gitcommitFile  = {fg = paper.dark_green},

    VistaBracket = {fg=paper.grey},
    VistaChildrenNr = {fg=paper.orange},
    VistaKind = {fg=paper.purpl},
    VistaScope = {fg=paper.red},
    VistaScopeKind = {fg=paper.blue},
    VistaTag = {fg=paper.magenta,style='bold'},
    VistaPrefix = {fg=paper.grey},
    VistaColon = {fg=paper.magenta},
    VistaIcon = {fg=paper.yellow},
    VistaLineNr = {fg=paper.fg},

    GitGutterAdd = {fg=paper.dark_green},
    GitGutterChange = {fg=paper.blue},
    GitGutterDelete = {fg=paper.red},
    GitGutterChangeDelete = {fg=paper.violet},

    GitSignsAdd = {fg=paper.dark_green},
    GitSignsChange = {fg=paper.blue},
    GitSignsDelete = {fg=paper.red},
    GitSignsAddNr = {fg=paper.dark_green},
    GitSignsChangeNr = {fg=paper.blue},
    GitSignsDeleteNr = {fg=paper.red},
    GitSignsAddLn = {bg=paper.bg_popup},
    GitSignsChangeLn = {bg=paper.bg_highlight},
    GitSignsDeleteLn = {bg=paper.bg1},

    SignifySignAdd = {fg=paper.dark_green},
    SignifySignChange = {fg=paper.blue},
    SignifySignDelete = {fg=paper.red},

    dbui_tables = {fg=paper.blue},

    LspDiagnosticsSignError = {fg=paper.red},
    LspDiagnosticsSignWarning = {fg=paper.yellow},
    LspDiagnosticsSignInformation = {fg=paper.blue},
    LspDiagnosticsSignHint = {fg=paper.cyan},

    LspDiagnosticsVirtualTextError = {fg=paper.red},
    LspDiagnosticsVirtualTextWarning= {fg=paper.yellow},
    LspDiagnosticsVirtualTextInformation = {fg=paper.blue},
    LspDiagnosticsVirtualTextHint = {fg=paper.cyan},

    LspDiagnosticsUnderlineError = {style="undercurl",sp=paper.red},
    LspDiagnosticsUnderlineWarning = {style="undercurl",sp=paper.yellow},
    LspDiagnosticsUnderlineInformation = {style="undercurl",sp=paper.blue},
    LspDiagnosticsUnderlineHint = {style="undercurl",sp=paper.cyan},

    DiagnosticError = { fg=paper.red },
    DiagnosticWarn = { fg=paper.yellow },
    DiagnosticInfo = { fg=paper.blue },
    DiagnosticHint = { fg=paper.green },

    CursorWord0 = {bg=paper.currsor_bg},
    CursorWord1 = {bg=paper.currsor_bg},

    NvimTreeFolderName = {fg=paper.blue},
    NvimTreeRootFolder = {fg=paper.red,style='bold'},
    NvimTreeSpecialFile = {fg=paper.fg,bg=paper.none,stryle='NONE'},

    TSRainbowRed = { fg = paper.red },
    TSRainbowOrange = { fg = paper.orange },
    TSRainbowYellow = { fg = paper.yellow },
    TSRainbowGreen = { fg = paper.green },
    TSRainbowBlue = { fg = paper.blue },
    TSRainbowViolet = { fg = paper.purple },
    TSRainbowCyan = { fg = paper.aqua },
    RainbowDelimiterRed = { fg = paper.red },
    RainbowDelimiterOrange = { fg = paper.orange },
    RainbowDelimiterYellow = { fg = paper.yellow },
    RainbowDelimiterGreen = { fg = paper.green },
    RainbowDelimiterBlue = { fg = paper.blue },
    RainbowDelimiterViolet = { fg = paper.purple },
    RainbowDelimiterCyan = { fg = paper.aqua },

    WinSeparator = { fg = paper.bg, bg = paper.bg },
    VertSplit = { fg = paper.bg, bg = paper.bg },
    NvimTreeWinSeparator = { fg = paper.bg, bg = paper.bg },
    NvimTreeVertSplit = { fg = paper.bg, bg = paper.bg },

    NoiceCursor = { link = "TermCursor" },
    NoiceCmdlinePopupBorder = { fg = paper.blue, bg = nil },
    NoiceCmdlineIcon = { link = "NoiceCmdlinePopupBorder" },
    NoiceConfirmBorder = { link = "NoiceCmdlinePopupBorder" },
    NoiceCmdlinePopupBorderSearch = { fg = paper.yellow, bg = nil },
    NoiceCmdlineIconSearch = { link = "NoiceCmdlinePopupBorderSearch" },

    NoicePopup = { fg = paper.fg, bg = paper.bg},
    NoicePopupBorder = { fg = paper.fg, bg = paper.bg},
    NoiceSplit = { fg = paper.fg, bg = paper.bg},
    NoiceSplitBorder = { fg = paper.fg, bg = paper.bg},
    NoiceFloat = { fg = paper.fg, bg = paper.bg},
    NoiceFloatBorder = { fg = paper.fg, bg = paper.bg},
    NoicePopupMenu = { fg = paper.fg, bg = paper.bg_popup},
    NoicePopupMenuBorder = { fg = paper.fg, bg = paper.bg},
    NoicePopupMenuMatch = { fg = paper.green, bg = paper.bg},
    NoicePopupMenuSelected = { fg = paper.fg, bg = paper.bg_highlight},

    NoiceScrollbar = { bg = paper.fg },
    NoiceScrollbarThumb = { bg = paper.bg_highlight },

    NoiceVirtualText = { fg = paper.bg_popup },

    TelescopeBorder = {fg=paper.teal},
    TelescopePromptBorder = {fg=paper.blue},
    TelescopeMatching = {fg=paper.teal},
    TelescopeSelection = {fg=paper.yellow,bg=paper.bg_highlight,style= 'bold'},
    TelescopeSelectionCaret = {fg=paper.yellow},
    TelescopeMultiSelection = {fg=paper.teal},

    ["@comment"] = { link = "Comment" },
    ["@none"] = { bg = "NONE", fg = "NONE" },
    ["@preproc"] = { link = "PreProc" },
    ["@define"] = { link = "Define" },
    ["@operator"] = { link = "Operator" },
    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "Delimiter" },
    ["@string"] = { link = "String" },
    ["@string.regex"] = { link = "String" },
    ["@string.regexp"] = { link = "String" },
    ["@string.escape"] = { link = "SpecialChar" },
    ["@string.special"] = { link = "SpecialChar" },
    ["@string.special.path"] = { link = "Underlined" },
    ["@string.special.symbol"] = { link = "Identifier" },
    ["@string.special.url"] = { link = "Underlined" },
    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },
    ["@boolean"] = { link = "Boolean" },
    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@float"] = { link = "Float" },
    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Special" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@method"] = { link = "Function" },
    ["@method.call"] = { link = "Function" },
    ["@constructor"] = { link = "Special" },
    ["@parameter"] = { link = "Identifier" },
    ["@keyword"] = { link = "Keyword" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.debug"] = { link = "Debug" },
    ["@keyword.directive"] = { link = "PreProc" },
    ["@keyword.directive.define"] = { link = "Define" },
    ["@keyword.exception"] = { link = "Exception" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.operator"] = { link = "GruvboxRed" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.storage"] = { link = "StorageClass" },
    ["@conditional"] = { link = "Conditional" },
    ["@repeat"] = { link = "Repeat" },
    ["@debug"] = { link = "Debug" },
    ["@label"] = { link = "Label" },
    ["@include"] = { link = "Include" },
    ["@exception"] = { link = "Exception" },
    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Typedef" },
    ["@type.qualifier"] = { link = "Type" },
    ["@storageclass"] = { link = "StorageClass" },
    ["@attribute"] = { link = "PreProc" },
    ["@field"] = { link = "Identifier" },
    ["@property"] = { link = "Identifier" },
    ["@variable"] = { link = "GruvboxFg1" },
    ["@variable.builtin"] = { link = "Special" },
    ["@variable.member"] = { link = "Identifier" },
    ["@variable.parameter"] = { link = "Identifier" },
    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Special" },
    ["@constant.macro"] = { link = "Define" },
    ["@markup"] = { link = "GruvboxFg1" },
    ["@markup.strong"] = { style = "bold" },
    ["@markup.italic"] = { link = "@text.emphasis" },
    ["@markup.underline"] = { style = "underline" },
    ["@markup.strikethrough"] = { style = "strikethrough" },
    ["@markup.heading"] = { link = "Title" },
    ["@markup.raw"] = { link = "String" },
    ["@markup.math"] = { link = "Special" },
    ["@markup.environment"] = { link = "Macro" },
    ["@markup.environment.name"] = { link = "Type" },
    ["@markup.link"] = { link = "Underlined" },
    ["@markup.link.label"] = { link = "SpecialChar" },
    ["@markup.list"] = { link = "Delimiter" },
    ["@markup.list.checked"] = { link = "GruvboxGreen" },
    ["@markup.list.unchecked"] = { link = "GruvboxGray" },
    ["@comment.todo"] = { link = "Todo" },
    ["@comment.note"] = { link = "SpecialComment" },
    ["@comment.warning"] = { link = "WarningMsg" },
    ["@comment.error"] = { link = "ErrorMsg" },
    ["@diff.plus"] = { link = "diffAdded" },
    ["@diff.minus"] = { link = "diffRemoved" },
    ["@diff.delta"] = { link = "diffChanged" },
    ["@module"] = { link = "GruvboxFg1" },
    ["@namespace"] = { link = "GruvboxFg1" },
    ["@symbol"] = { link = "Identifier" },
    ["@text"] = { link = "GruvboxFg1" },
    ["@text.strong"] = { stlye = "bold" },
    ["@text.emphasis"] = { style = "italic" },
    ["@text.underline"] = { stlye = "underline" },
    ["@text.strike"] = { style = "strikethrough" },
    ["@text.title"] = { link = "Title" },
    ["@text.literal"] = { link = "String" },
    ["@text.uri"] = { link = "Underlined" },
    ["@text.math"] = { link = "Special" },
    ["@text.environment"] = { link = "Macro" },
    ["@text.environment.name"] = { link = "Type" },
    ["@text.reference"] = { link = "Constant" },
    ["@text.todo"] = { link = "Todo" },
    ["@text.todo.checked"] = { link = "GruvboxGreen" },
    ["@text.todo.unchecked"] = { link = "GruvboxGray" },
    ["@text.note"] = { link = "SpecialComment" },
    ["@text.note.comment"] = { fg = paper.purple, style = "bold"},
    ["@text.warning"] = { link = "WarningMsg" },
    ["@text.danger"] = { link = "ErrorMsg" },
    ["@text.danger.comment"] = { fg = paper.fg, bg = paper.red, style = "bold" },
    ["@text.diff.add"] = { link = "diffAdded" },
    ["@text.diff.delete"] = { link = "diffRemoved" },
    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "Identifier" },
    ["@tag.delimiter"] = { link = "Delimiter" },
    ["@punctuation"] = { link = "Delimiter" },
    ["@macro"] = { link = "Macro" },
    ["@structure"] = { link = "Structure" },
    ["@lsp.type.class"] = { link = "@type" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.decorator"] = { link = "@macro" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.function"] = { link = "@function" },
    ["@lsp.type.interface"] = { link = "@constructor" },
    ["@lsp.type.macro"] = { link = "@macro" },
    ["@lsp.type.method"] = { link = "@method" },
    ["@lsp.type.modifier.java"] = { link = "@keyword.type.java" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.struct"] = { link = "@type" },
    ["@lsp.type.type"] = { link = "@type" },
    ["@lsp.type.typeParameter"] = { link = "@type.definition" },
    ["@lsp.type.variable"] = { link = "@variable" },
  }
  return plugin_syntax
end

local async_load_plugin

async_load_plugin = vim.loop.new_async(vim.schedule_wrap(function ()
  paper.terminal_color()
  local syntax = paper.load_plugin_syntax()
  for group,colors in pairs(syntax) do
    paper.highlight(group,colors)
  end
  async_load_plugin:close()
end))

function paper.colorscheme()
  vim.api.nvim_command('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.api.nvim_command('syntax reset')
  end
  vim.o.background = 'dark'
  vim.o.termguicolors = true
  vim.g.colors_name = 'paper'
  local syntax = paper.load_syntax()
  for group,colors in pairs(syntax) do
    paper.highlight(group,colors)
  end
  async_load_plugin:send()
end

paper.colorscheme()

return paper
