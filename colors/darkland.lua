vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "darkland"

local opts = {
  transparent = false,
  styles = {
    comments = {},
    functions = {},
    keywords = {},
    lsp = { underline = false },
    match_paren = {},
    type = { bold = false },
    variables = {},
  },
}

local color = {
  primary = "",
  secondary = "",
  warning = "",
  only = "",
  gray = "",
  black = "",
  white = ""
}

local c = {
  none = "NONE",
  bg = "#000000",
  fg = "#c2c2c2",
  alt_bg = "#171717",
  accent = "#202020",
  cursor_fg = "#151515",
  cursor_bg = "#D0D0D0",
  -- gray
  gray = "#676F79",
  dark_gray = "#313131", -- visual : only
  medium_gray = "#707070",
  light_gray = "#AFAFAF",
  cyan = "#008170",
  green = "#8a9a7b",
  blue = "#146C94",
  light_green = "#90A959",
  red = "#B6927B",
  orange = "#BC5215",
  white = "#d8d8d8",

  -- less used just accent
  dark_red = "#DA0037",
  yellow = "#F4BF75",
  purple = "#AA749F",
  magenta = "#AA759F",
  sign_add = "#586935",
  sign_change = "#51657B",
  sign_delete = "#984936",
  error = "#984936",
  warning = "#ab8550",
  info = "#ab8550",
  hint = "#576f82",
  todo = "#578266",
  dark_blue = "#191a20",
  dark_green = "#1c2019",
  light_red = "#F05454",
}

local theme = {
  Normal = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
  SignColumn = { bg = opts.transparent and c.none or c.bg },
  MsgArea = {
    fg = c.fg,
    bg = opts.transparent and c.none or c.bg,
  },
  ModeMsg = { fg = c.fg, bg = c.bg },
  MsgSeparator = { fg = c.fg, bg = c.bg },
  SpellBad = { sp = c.error, undercurl = true },
  SpellCap = { sp = c.yellow, undercurl = true },
  SpellLocal = { sp = c.sign_add, undercurl = true },
  SpellRare = { sp = c.purple, undercurl = true },
  NormalNC = {
    fg = c.fg,
    bg = opts.transparent and c.none or c.bg,
  },
  Pmenu = { fg = c.light_gray, bg = c.accent },
  PmenuSel = { fg = c.blue, bg = c.alt_bg },
  WildMenu = { fg = c.blue, bg = c.alt_bg },
  CursorLineNr = {
    fg = c.light_gray,
    bold = true,
  },
  Comment = vim.tbl_extend("force", { fg = c.gray }, opts.styles.comments),
  Folded = { fg = c.light_gray, bg = c.alt_bg },
  FoldColumn = { fg = c.light_gray, bg = c.alt_bg },
  LineNr = { fg = c.medium_gray },
  Whitespace = { fg = c.gray },
  VertSplit = { fg = c.bg, bg = c.accent },
  CursorLine = {
    bg = c.alt_bg,
  },
  CursorColumn = { bg = c.alt_bg },
  ColorColumn = { bg = c.alt_bg },

  NormalFloat = {
    bg = opts.transparent and c.none or c.alt_bg,
  },
  Visual = { bg = c.dark_gray },
  VisualNOS = { bg = c.alt_bg },
  WarningMsg = { fg = c.error, bg = c.bg },
  DiffAdd = { bg = c.dark_green },
  DiffText = { bg = c.dark_blue },
  DiffChange = {
    fg = c.sign_change,
    bg = c.dark_blue,
  },
  DiffDelete = { fg = c.sign_delete, bg = c.light_red },
  QuickFixLine = { bg = c.accent },
  PmenuSbar = { bg = c.alt_bg },
  PmenuThumb = { bg = c.light_gray },
  MatchWord = { underline = true },
  MatchParen = vim.tbl_extend("force", { fg = c.light_gray, bg = c.alt_bg, underline = true }, opts.styles.match_paren),
  MatchWordCur = { underline = true },
  MatchParenCur = { underline = true },
  Cursor = { fg = c.cursor_fg, bg = c.cursor_bg },
  lCursor = { fg = c.cursor_fg, bg = c.cursor_bg },
  CursorIM = { fg = c.cursor_fg, bg = c.cursor_bg },
  TermCursor = {
    fg = c.cursor_fg,
    bg = c.cursor_bg,
    reverse = false,
  },
  TermCursorNC = {
    fg = c.alt_bg,
    reverse = false,
  },
  Conceal = { fg = c.fg },
  Directory = { fg = c.blue },
  SpecialKey = { fg = c.blue },
  Title = { fg = c.white},
  ErrorMsg = { fg = c.error, bg = c.bg, bold = true },
  Search = { fg = c.orange, bg = c.alt_bg },
  IncSearch = { fg = c.alt_bg, bg = c.orange },
  Substitute = { fg = c.alt_bg, bg = c.orange },
  MoreMsg = { fg = c.fg },
  Question = { fg = c.fg },
  EndOfBuffer = { fg = c.gray },
  NonText = { fg = c.fg },
  Variable = vim.tbl_extend("force", { fg = c.white }, opts.styles.variables),
  String = { fg = c.green },
  Character = { fg = c.light_green },
  Constant = { fg = c.white },
  Number = { fg = c.red },
  Boolean = { fg = c.red },
  Float = { fg = c.red },
  Identifier = { fg = c.white },
  Function = vim.tbl_extend("force", { fg = c.fg }, opts.styles.functions),
  Operator = { fg = c.white },
  Type = vim.tbl_extend("force", { fg = c.cyan }, opts.styles.type),
  StorageClass = { fg = c.cyan },
  Structure = { fg = c.cyan },
  Typedef = { fg = c.white },
  Keyword = vim.tbl_extend("force", { fg = c.cyan }, opts.styles.keywords),
  Statement = { fg = c.cyan },
  Conditional = { fg = c.cyan },
  Repeat = { fg = c.cyan },
  Label = { fg = c.white },
  Exception = { fg = c.red },
  Include = { fg = c.cyan },
  PreProc = { fg = c.white },
  Define = { fg = c.red },
  Macro = { fg = c.fg },
  PreCondit = { fg = c.medium_gray },
  Special = { fg = c.white },
  SpecialChar = { fg = c.green },
  Tag = { fg = c.cyan },
  Debug = { fg = c.red },
  Delimiter = { fg = c.white },
  SpecialComment = vim.tbl_extend("force", { fg = c.medium_gray }, opts.styles.comments),
  Underlined = { underline = false },
  Bold = { bold = true },
  Italic = { italic = true },
  Ignore = { fg = c.fg, bg = c.bg, bold = true },
  Todo = { fg = c.red, bg = c.bg, bold = true },
  Error = { fg = c.error, bg = c.bg, bold = true },
  TabLine = { fg = c.gray, bg = c.alt_bg },
  TabLineSel = { fg = c.white, bg = c.alt_bg },
  TabLineFill = { fg = c.white, bg = c.alt_bg },
  WinSeparator = { fg = c.medium_gray, bg = c.bg },
  DiagnosticFloatingError = { fg = c.error },
  DiagnosticUnnecessary  = { fg=c.gray },
  FloatBorder = { fg = c.light_gray },

  -- Treesitter
  ["@annotation"] = { fg = c.white },
  ["@attribute"] = { fg = c.white },
  ["@boolean"] = { fg = c.red },
  ["@character"] = { fg = c.light_green },
  ["@comment"] = { link = "Comment" },
  ["@comment.documentation"] = { fg = c.medium_gray },
  ["@comment.error"] = { fg = c.error },
  ["@comment.note"] = { fg = c.light_gray },
  ["@comment.todo"] = { fg = c.todo },
  ["@comment.warning"] = { fg = c.warning },
  ["@const.builtin"] = { fg = c.red },
  ["@const.macro"] = { fg = c.fg },
  ["@constant"] = { fg = c.white },
  ["@constructor"] = { fg = c.fg },
  ["@error"] = { fg = c.error },
  ["@function"] = vim.tbl_extend("force", { fg = c.fg }, opts.styles.functions),
  ["@function.builtin"] = { fg = c.cyan },
  ["@function.macro"] = { fg = c.fg },
  ["@function.method"] = { fg = c.fg },
  ["@function.method.call"] = { fg = c.fg },
  ["@keyword"] = vim.tbl_extend("force", { fg = c.cyan }, opts.styles.keywords),
  ["@keyword.conditional"] = { fg = c.cyan },
  ["@keyword.coroutine"] = { fg = c.cyan },
  ["@keyword.exception"] = { fg = c.cyan },
  ["@keyword.function"] = vim.tbl_extend("force", { fg = c.cyan }, opts.styles.keywords),
  ["@keyword.import"] = { fg = c.cyan },
  ["@keyword.operator"] = { fg = c.cyan },
  ["@keyword.repeat"] = { fg = c.cyan },
  ["@label"] = { fg = c.white },
  ["@lsp.type.comment"] = {},
  ["@markup"] = { fg = c.fg },
  ["@markup.italic"] = { italic = true },
  ["@markup.link"] = { fg = c.green },
  ["@markup.list"] = { fg = c.fg },
  ["@markup.list.unchecked"] = { fg = c.fg },
  ["@markup.literal"] = { fg = c.medium_gray },
  ["@markup.strong"] = { fg = c.medium_gray },
  ["@markup.title"] = { fg = c.medium_gray },
  ["@markup.underline"] = { underline = true },
  ["@module"] = { fg = c.white },
  ["@number"] = { fg = c.red },
  ["@number.float"] = { fg = c.red },
  ["@operator"] = { fg = c.white },
  ["@property"] = { fg = c.white },
  ["@punctuation.bracket"] = { fg = c.medium_gray },
  ["@punctuation.delimiter"] = { fg = c.medium_gray },
  ["@string"] = { fg = c.green },
  ["@string.escape"] = { fg = c.green },
  ["@string.regexp"] = { fg = c.green },
  ["@string.special.symbol"] = { fg = c.medium_gray },
  ["@tag"] = { fg = c.cyan },
  ["@tag.attribute"] = { fg = c.white },
  ["@tag.delimiter"] = { fg = c.medium_gray },
  ["@type"] = vim.tbl_extend("force", { fg = c.white }, opts.styles.type),
  ["@type.builtin"] = { fg = c.medium_gray },
  ["@variable"] = vim.tbl_extend("force", { fg = c.white }, opts.styles.variables),
  ["@variable.builtin"] = { fg = c.white },
  ["@variable.field"] = { fg = c.white },
  ["@variable.parameter"] = { fg = c.white },
  ["@variable.parameter.reference"] = { fg = c.white },
  -- Python
  ["@constant.builtin.python"] = {fg = c.orange},

  -- Telescop
  TelescopeNormal = {
    fg = c.fg,
    bg = opts.transparent and c.none or c.bg,
  },
  TelescopeSelection = { fg = c.fg, bg = c.accent },
  TelescopeMatching = { fg = c.orange, bold = true },
  TelescopeBorder = {
    fg = c.light_gray,
    bg = opts.transparent and c.none or c.bg,
  },

  -- LSP
  LspReferenceRead = { bg = "#36383F" },
  LspReferenceText = { bg = "#36383F" },
  LspReferenceWrite = { bg = "#36383f" },
  DiagnosticError = { fg = c.error },
  DiagnosticWarn = { fg = c.warning },
  DiagnosticInfo = { fg = c.info },
  DiagnosticHint = { fg = c.hint },
  DiagnosticVirtualTextError = { fg = c.error },
  DiagnosticVirtualTextWarn = { fg = c.warning },
  DiagnosticVirtualTextInfo = { fg = c.info },
  DiagnosticVirtualTextHint = { fg = c.hint },
  DiagnosticUnderlineError = vim.tbl_extend("force", { sp = c.error }, opts.styles.lsp),
  DiagnosticUnderlineWarn = vim.tbl_extend("force", { sp = c.warning }, opts.styles.lsp),
  DiagnosticUnderlineInfo = vim.tbl_extend("force", { sp = c.info }, opts.styles.lsp),
  DiagnosticUnderlineHint = vim.tbl_extend("force", { sp = c.hint }, opts.styles.lsp),
  LspSignatureActiveParameter = { bg = c.alt_bg, bold = true },
  LspCodeLens = { fg = c.comment },
  LspInlayHint = { bg = c.hint },
  LspInfoBoarder = { fg = c.light_gray, bg = c.hint },

  -- Lazy
  LazyButton = { fg = c.fg },
  LazyButtonActive = { fg = c.fg, bold = true },
  LazyComment = { fg = c.medium_gray },
  LazyCommit = { fg = c.white },
  LazyCommitIssue = { fg = c.red },
  LazyCommitScope = { fg = c.fg },
  LazyCommitType = { fg = c.fg },
  LazyDimmed = { fg = c.medium_gray },
  LazyDir = { fg = c.cyan },
  LazyH1 = { fg = c.fg, bold = true },
  LazyH2 = { fg = c.fg },
  LazyNoCond = { fg = c.blue },
  LazyNormal = { fg = c.fg },
  LazyProgressDone = { fg = c.cursor_fg },
  LazyProgressTodo = { fg = c.gray },
  LazyProp = { fg = c.fg },
  LazyReasonCmd = { fg = c.fg },
  LazyReasonEvent = { fg = c.fg },
  LazyReasonFt = { fg = c.light_green },
  LazyReasonImport = { fg = c.fg },
  LazyReasonKeys = { fg = c.cyan },
  LazyReasonPlugin = { fg = c.fg },
  LazyReasonRuntime = { fg = c.fg },
  LazyReasonSource = { fg = c.fg },
  LazyReasonStart = { fg = c.fg },
  LazySpecial = { fg = c.fg },
  LazyTaskError = { fg = c.red },
  LazyTaskOutput = { fg = c.medium_gray },
  LazyUrl = { fg = c.cyan },
  LazyValue = { fg = c.green },

  -- VIM Visual Multi 
   VM_Insert = { bg = c.cyan },
   VM_Extend = { bg = c.gray },
   VM_Cursor = { bg = c.blue },
   VM_Mono = { bg = c.red },
}

for group, hl in pairs(theme) do
  vim.api.nvim_set_hl(0, group, hl)
end
