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
local function callback(c, opts)
  return {
    -- Comment
    Comment = { fg = c.syntax.comment, bg = c.none, italic = opts.italic_comments }, -- any comment
    -- Constant
    Constant = { fg = opts.simple_syntax_colors and c.syntax.cyan or c.syntax.yellow, bg = c.none }, -- any constant
    String = { fg = c.syntax.green, bg = c.none }, -- a string constant: "this is a string"
    Character = { fg = c.syntax.green, bg = c.none }, -- a character constant: 'c', '\n'
    Number = { fg = c.syntax.orange, bg = c.none }, -- a number constant: 234, 0xff
    Boolean = { fg = c.syntax.orange, bg = c.none }, -- a boolean constant: TRUE, false
    Float = { fg = c.syntax.yellow, bg = c.none }, -- a floating point constant: 2.3e10
    -- Identifier
    Identifier = { fg = c.syntax.text, bg = c.none }, -- any variable name
    Function = { fg = c.syntax.blue, bg = c.none }, -- function name (also: methods for classes)
    -- Statement
    Statement = { fg = c.syntax.purple, bg = c.none }, -- any statement
    Conditional = { fg = c.syntax.purple, bg = c.none }, -- if, then, else, endif, switch, etc.
    Repeat = { fg = c.syntax.purple, bg = c.none }, -- for, do, while, etc.
    Label = { fg = c.syntax.blue, bg = c.none }, -- case, default, etc.
    Operator = { fg = opts.simple_syntax_colors and c.syntax.purple or c.syntax.text, bg = c.none }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.syntax.purple, bg = c.none }, -- any other keyword
    Exception = { fg = c.syntax.purple, bg = c.none }, -- try, catch, throw
    -- Preproc
    PreProc = { fg = c.syntax.yellow, bg = c.none }, -- generic Preprocessor
    Include = { fg = c.syntax.purple, bg = c.none }, -- preprocessor #include
    Define = { fg = c.syntax.purple, bg = c.none }, -- preprocessor #define
    Macro = { fg = c.syntax.orange, bg = c.none }, -- same as Define
    PreCondit = { fg = c.syntax.blue, bg = c.none }, -- preprocessor #if, #else, #endif, etc.
    -- Type
    Type = { fg = c.syntax.blue, bg = c.none }, -- int, long, char, etc.
    StorageClass = { fg = c.syntax.blue, bg = c.none }, -- static, register, volatile, etc.
    Structure = { fg = c.syntax.yellow, bg = c.none }, -- struct, union, enum, etc.
    Typedef = { fg = c.syntax.yellow, bg = c.none }, -- A typedef
    -- Special
    Special = { fg = c.syntax.blue, bg = c.none }, -- any special symbol
    SpecialChar = { fg = c.syntax.blue, bg = c.none }, -- special character in a constant
    Tag = { fg = c.syntax.blue, bg = c.none }, -- you can use CTRL-] on this
    Delimiter = { fg = c.syntax.blue, bg = c.none }, -- character that needs attention
    SpecialComment = { fg = c.ui.none_text, bg = c.none }, -- special things inside a comment
    Debug = { fg = c.ui.blue, bg = c.none }, -- debugging statements
    -- Underlined
    Underlined = { fg = c.syntax.cyan, bg = c.none, underline = true }, -- text that stands out, HTML links
    -- Ignore
    Ignore = { fg = c.none, bg = c.none }, -- left blank, hidden  |hl-Ignore|
    -- Error
    Error = { fg = c.ui.red, bg = c.none }, -- any erroneous construct
    -- Todo
    Todo = { fg = c.ui.yellow, bg = c.none }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
  }
end
return callback
