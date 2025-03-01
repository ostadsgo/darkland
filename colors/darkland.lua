vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "darkland"

local none = "none"
local bg = "#040404"
local line = "#212121"
local fg = "#cdcdcd"
local gray = "#737373"
local visual = "#373737" 
local primary = "#789978"
local gray_blue = "#708090" 
local red = "#b6927b"
local warn = "#ab8550"
local error = "#984936"
local hint = "#7788aa"

local theme = {
  -- Line Indicators
  CursorLine = { bg = line },
  CursorColumn = { link = "CursorLine" },
  ColorColumn = { link = "CursorLine" },
  StatusLine = { bg = line },
  StatusLineNC = { bg = bg },

  -- Normal aka white
  Normal = { fg = fg, bg = bg },
  NormalNC = { link = "Normal" },
  MsgArea = { link = "Normal" },
  MsgSeparator = { link = "Normal" },
  ModeMsg = { link = "Normal" },
  NormalFloat = { link = "Normal" },

  -- Text
  Identifier = { fg = fg},
  Constant = { link = "Identifier" },
  Function =  { link = "Identifier" },
  Conceal = { link = "Identifier" },
  Operator = { link = "Identifier" },
  NonText = { link = "Identifier" },
  MoreMsg = { link = "Identifier" },
  Title = { link = "Identifier" },
  Question = { link = "Identifier" },
  Variable =  { link = "Identifier" }, 
  Typedef = { link = "Identifier" },
  Label = { link = "Identifier" },
  Macro = { link = "Identifier" },
  Delimiter = { link = "Identifier" },
  PreProc = { link = "Identifier" },

  -- Statement
  Keyword =  { fg = primary }, 
  Statement = { link = "Keyword" },
  Type =  { link = "Keyword" }, 
  Structure = { link = "Keyword" },
  StorageClass = { link = "Keyword" },
  Conditional = { link = "Keyword" },
  Repeat = { link = "Keyword" },
  Include = { link = "Keyword" },
  Tag = { link = "Keyword" },
  SpecialKey = { link = "Keyword" },
  Exception = { link = "Keyword" },

  -- Number
  Number = { fg = red },
  Define = { link = "Number" },
  Boolean = { link = "Number" },
  Float = { link = "Number" },
  Debug = { link = "Number" },
  Todo = { link = "Number", bg = bg },

  -- Comment / Gray
  Special = { fg = gray },
  Comment =  { link = "Special" },
  SpecialComment =  { link = "Special" }, 
  LineNr = { link = "Special" },
  Whitespace = { link = "Special" },
  EndOfBuffer = { link = "Special" },
  PreCondit = { link = "Special" },

  -- String
  String = { fg = gray_blue },
  Character = { link = "String" },
  SpecialChar = { link = "String" },
  Directory = { link = "String" },

  CursorLineNr = { fg = red, bold = true },
  SpellCap = { sp = red, undercurl = true },

  -- Search
  Search = { fg = bg, bg = warn },
  IncSearch = { link = "Search" },
  Substitute = { link = "Search" },

  -- Error
  ErrorMsg = { fg = error },
  WarningMsg = { link = "ErrorMsg" },
  SpellBad = { sp = red, undercurl = true },

  -- Visual
  Visual = { bg = visual },
  Pmenu = { fg = fg, bg = line },
  PmenuSel = { fg = fg, bg = visual },

  -- Python
  pythonOperator = { link = "Keyword"},
  pythonExceptions = { link = "Identifier" },
  pythonFunction = {fg = fg },
  pythonBuiltin  = {fg = fg},

  -- Lua
  luaTable = { link = "Identifier" },

  -- LSP
  DiagnosticWarn = { fg = warn },
  DiagnosticHint = { fg = warn },
  DiagnosticFloatingError = { fg = error },
  FloatBorder = { fg = fg },
  DiagnosticUnnecessary = { fg = gray },

  -- MiniPickBorder xxx links to FloatBorder
  -- MiniPickBorderBusy xxx links to DiagnosticFloatingWarn
  -- MiniPickBorderText xxx links to FloatTitle
  -- MiniPickCursor xxx cleared
  -- MiniPickIconDirectory xxx links to Directory
  -- MiniPickIconFile xxx links to MiniPickNormal
  -- MiniPickNormal xxx links to NormalFloat
  -- MiniPickHeader xxx links to DiagnosticFloatingHint
  -- MiniPickMatchCurrent xxx links to CursorLine
  -- MiniPickMatchMarked xxx links to Visual
  -- MiniPickMatchRanges xxx links to DiagnosticFloatingHint
  -- MiniPickPreviewLine xxx links to CursorLine
  -- MiniPickPreviewRegion xxx links to IncSearch
  -- MiniPickPrompt xxx links to DiagnosticFloatingInfo

  -- Treesitter
  ["@variable"] = { link = "Identifier" },
  ["@variable.memeber"] = { link = "Identifier" },
  ["@property"] = { link = "Identifier" },
  ["@function.builtin"] = { link = "Identifier" },
  ["@punctuation.bracket"] = { link = "Special" },
  ["@punctuation.delimiter"] = { link = "Special" },
}

for group, hl in pairs(theme) do
  vim.api.nvim_set_hl(0, group, hl)
end
