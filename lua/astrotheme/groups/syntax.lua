-- Subgroups inherit highlights from their primary groups by default.
-- While unnecessary, we define all subgroups and their highlights
-- for completeness.
--
-- Syntax group hierarchy (e.g.):
--   - Constant (Primary group)
--       - String (Subgroup)
--       - Character (Subgroup)
--
-- Ref: :help group-name
---@type AstroThemeCallback
local function callback(colors, opts)
  return {
    -- Comment
    Comment = { fg = colors.syntax.comment, bg = colors.none, italic = opts.italic_comments }, -- any comment
    -- Constant
    Constant = { fg = opts.simple_syntax_colors and colors.syntax.cyan or colors.syntax.yellow, bg = colors.none }, -- any constant
    String = { fg = colors.syntax.green, bg = colors.none }, -- a string constant: "this is a string"
    Character = { fg = colors.syntax.green, bg = colors.none }, -- a character constant: 'c', '\n'
    Number = { fg = colors.syntax.orange, bg = colors.none }, -- a number constant: 234, 0xff
    Boolean = { fg = colors.syntax.orange, bg = colors.none }, -- a boolean constant: TRUE, false
    Float = { fg = colors.syntax.yellow, bg = colors.none }, -- a floating point constant: 2.3e10
    -- Identifier
    Identifier = { fg = colors.syntax.text, bg = colors.none }, -- any variable name
    Function = { fg = colors.syntax.blue, bg = colors.none }, -- function name (also: methods for classes)
    -- Statement
    Statement = { fg = colors.syntax.purple, bg = colors.none }, -- any statement
    Conditional = { fg = colors.syntax.purple, bg = colors.none }, -- if, then, else, endif, switch, etc.
    Repeat = { fg = colors.syntax.purple, bg = colors.none }, -- for, do, while, etc.
    Label = { fg = colors.syntax.blue, bg = colors.none }, -- case, default, etc.
    Operator = { fg = opts.simple_syntax_colors and colors.syntax.purple or colors.syntax.text, bg = colors.none }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = colors.syntax.purple, bg = colors.none }, -- any other keyword
    Exception = { fg = colors.syntax.purple, bg = colors.none }, -- try, catch, throw
    -- Preproc
    PreProc = { fg = colors.syntax.yellow, bg = colors.none }, -- generic Preprocessor
    Include = { fg = colors.syntax.purple, bg = colors.none }, -- preprocessor #include
    Define = { fg = colors.syntax.purple, bg = colors.none }, -- preprocessor #define
    Macro = { fg = colors.syntax.orange, bg = colors.none }, -- same as Define
    PreCondit = { fg = colors.syntax.blue, bg = colors.none }, -- preprocessor #if, #else, #endif, etc.
    -- Type
    Type = { fg = colors.syntax.blue, bg = colors.none }, -- int, long, char, etc.
    StorageClass = { fg = colors.syntax.blue, bg = colors.none }, -- static, register, volatile, etc.
    Structure = { fg = colors.syntax.yellow, bg = colors.none }, -- struct, union, enum, etc.
    Typedef = { fg = colors.syntax.yellow, bg = colors.none }, -- A typedef
    -- Special
    Special = { fg = colors.syntax.blue, bg = colors.none }, -- any special symbol
    SpecialChar = { fg = colors.syntax.blue, bg = colors.none }, -- special character in a constant
    Tag = { fg = colors.syntax.blue, bg = colors.none }, -- you can use CTRL-] on this
    Delimiter = { fg = colors.syntax.blue, bg = colors.none }, -- character that needs attention
    SpecialComment = { fg = colors.ui.none_text, bg = colors.none }, -- special things inside a comment
    Debug = { fg = colors.ui.blue, bg = colors.none }, -- debugging statements
    -- Underlined
    Underlined = { fg = colors.syntax.cyan, bg = colors.none, underline = true }, -- text that stands out, HTML links
    -- Ignore
    Ignore = { fg = colors.none, bg = colors.none }, -- left blank, hidden  |hl-Ignore|
    -- Error
    Error = { fg = colors.ui.red, bg = colors.none }, -- any erroneous construct
    -- Todo
    Todo = { fg = colors.ui.yellow, bg = colors.none }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  }
end
return callback
