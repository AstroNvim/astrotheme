# Neovim 0.9 - LSP Semantic Tokens

:warning: Support for LSP Semantic Tokens introduces breaking changes with builtin syntax highlighting (Treesitter).  
Theme authors will be required to handle these changes.
Seamless transition won't be possible in all cases, as new LSP-provided highlight groups will override those defined by Treesitter when using an LSP.  
A sensible [strategy](#strategy) must be defined for the best transition, which requires understanding of [Syntax Group Names](#syntax-group-names), [Treesitter Highlight Groups](#treesitter-highlight-groups) and [LSP Semantic Tokens](#lsp-semantic-tokens).

## Table of Contents

<!-- toc -->

- [Syntax Group Names](#syntax-group-names)
- [Treesitter Highlight Groups](#treesitter-highlight-groups)
- [LSP Semantic Tokens](#lsp-semantic-tokens)
  - [Types and Modifiers](#types-and-modifiers)
- [Strategy](#strategy)
  - [Helpers](#helpers)

<!-- tocstop -->

## Syntax Group Names

`:help group-name`

Neovim specifies default syntax group names. A syntax group name is used for syntax items that
match the same kind of thing. These are then linked to a highlight group that specifies the
color. A syntax group name doesn't specify any color or attributes itself.

```
*Comment	any comment

*Constant	any constant
 String		a string constant: "this is a string"
 Character	a character constant: 'c', '\n'
 Number		a number constant: 234, 0xff
 Boolean	a boolean constant: TRUE, false
 Float		a floating point constant: 2.3e10

*Identifier	any variable name
 Function	function name (also: methods for classes)

*Statement	any statement
 Conditional	if, then, else, endif, switch, etc.
 Repeat		for, do, while, etc.
 Label		case, default, etc.
 Operator	"sizeof", "+", "*", etc.
 Keyword	any other keyword
 Exception	try, catch, throw

*PreProc	generic Preprocessor
 Include	preprocessor #include
 Define		preprocessor #define
 Macro		same as Define
 PreCondit	preprocessor #if, #else, #endif, etc.

*Type		int, long, char, etc.
 StorageClass	static, register, volatile, etc.
 Structure	struct, union, enum, etc.
 Typedef	A typedef

*Special	any special symbol
 SpecialChar	special character in a constant
 Tag		you can use CTRL-] on this
 Delimiter	character that needs attention
 SpecialComment	special things inside a comment
 Debug		debugging statements

*Underlined	text that stands out, HTML links

*Ignore		left blank, hidden  |hl-Ignore|

*Error		any erroneous construct

*Todo		anything that needs extra attention; mostly the
		keywords TODO FIXME and XXX
```

## Treesitter Highlight Groups

`:help treesitter-highlight-groups`

Treesitter defines the following default highlight groups, most of which are linked to standard [syntax group names](#syntax-group-names):

> :information_source: Treesitter also defines highlight groups in addition to the defaults below on a per-language basis.  
>  For example, Treesitter is adding the `@type.qualifier` highlight group whenever it finds the `readonly` keyword in a TypeScript filetype:
> https://github.com/nvim-treesitter/nvim-treesitter/blob/5d59d1/queries/typescript/highlights.scm#L26

```
@text.literal      Comment
@text.reference    Identifier
@text.title        Title
@text.uri          Underlined
@text.underline    Underlined
@text.todo         Todo

@comment           Comment
@punctuation       Delimiter

@constant          Constant
@constant.builtin  Special
@constant.macro    Define
@define            Define
@macro             Macro
@string            String
@string.escape     SpecialChar
@string.special    SpecialChar
@character         Character
@character.special SpecialChar
@number            Number
@boolean           Boolean
@float             Float

@function          Function
@function.builtin  Special
@function.macro    Macro
@parameter         Identifier
@method            Function
@field             Identifier
@property          Identifier
@constructor       Special

@conditional       Conditional
@repeat            Repeat
@label             Label
@operator          Operator
@keyword           Keyword
@exception         Exception

@variable          Identifier
@type              Type
@type.definition   Typedef
@storageclass      StorageClass
@structure         Structure
@namespace         Identifier
@include           Include
@preproc           PreProc
@debug             Debug
@tag               Tag

@spell             Indicates that a node should be spell checked by Nvim's builtin spell checker.
@nospell           Disables spellchecking regions with @spell.
@conceal           Indicates that a node should be concealed, such as code block delimiters in Markdown.
```

## LSP Semantic Tokens

`:help lsp-semantic-highlight`

LSP Semantic Tokens introduce new highlight groups when using an LSP,
classified by [types and modifiers](#types-and-modifiers).

Neovim links _some_ (not all) of the Semantic Token [types](#types-and-modifiers) (not yet modifiers) back to [syntax group names](#syntax-group-names).  
:warning: It is these links that introduce breaking changes with [Treesitter's highlight groups](#treesitter-highlight-groups),
since the LSP highlight groups are prioritized over any other default highlight group.

The following LSP highlight groups are linked by default to [syntax group names](#syntax-group-names):

```
@lsp.type.class         Structure
@lsp.type.decorator     Function
@lsp.type.enum          Structure
@lsp.type.enumMember    Constant
@lsp.type.function      Function
@lsp.type.interface     Structure
@lsp.type.macro         Macro
@lsp.type.method        Function
@lsp.type.namespace     Structure
@lsp.type.parameter     Identifier
@lsp.type.property      Identifier
@lsp.type.struct        Structure
@lsp.type.type          Type
@lsp.type.typeParameter TypeDef
@lsp.type.variable      Identifier
```

### Types and Modifiers

The follow is a list of all semantic token _types_ included in the LSP protocol:

```
class         For identifiers that declare or reference a class type.
comment       For tokens that represent a comment.
decorator     For identifiers that declare or reference decorators and annotations.
enum          For identifiers that declare or reference an enumeration type.
enumMember    For identifiers that declare or reference an enumeration property, constant, or member.
event         For identifiers that declare an event property.
function      For identifiers that declare a function.
interface     For identifiers that declare or reference an interface type.
keyword       For tokens that represent a language keyword.
label         For identifiers that declare a label.
macro         For identifiers that declare a macro.
method        For identifiers that declare a member function or method.
namespace     For identifiers that declare or reference a namespace, module, or package.
number        For tokens that represent a number literal.
operator      For tokens that represent an operator.
parameter     For identifiers that declare or reference a function or method parameters.
property      For identifiers that declare or reference a member property, member field, or member variable.
regexp        For tokens that represent a regular expression literal.
string        For tokens that represent a string literal.
struct	      For identifiers that declare or reference a struct type.
type          For identifiers that declare or reference a type that is not covered above.
typeParameter For identifiers that declare or reference a type parameter.
variable      For identifiers that declare or reference a local or global variable.
```

The following is a list of all semantic token _modifiers_ included in the LSP protocol:

```
abstract       For types and member functions that are abstract.
async          For functions that are marked async.
declaration    For declarations of symbols.
documentation  For occurrences of symbols in documentation.
defaultLibrary For symbols that are part of the standard library.
definition     For definitions of symbols, for example, in header files.
deprecated     For symbols that should no longer be used.
modification   For variable references where the variable is assigned to.
readonly       For readonly variables and member fields (constants).
static         For class members (static members).
```

## Strategy

Theme authors have limited control over the priority of highlight groups between sources. (Treesitter vs. LSP).
By default, highlight groups set by LSP sources are prioritized over Treesitter sources.

### Helpers

`:so $VIMRUNTIME/syntax/hitest.vim` - Open a new window containing all currently active highlight group names,
displayed in their own color.

`:Inspect` - Show all highlight sources and groups at a given buffer position.

`vim.inspect_pos()` - Get all highlight sources and groups at a given buffer position.

`nvim_buf_set_extmark()` - Set a highlight group at any position with a chosen priority.

`vim.lsp.semantic_tokens.highlight_token()` - Set a highlight group on a semantic token with a chosen priority.
