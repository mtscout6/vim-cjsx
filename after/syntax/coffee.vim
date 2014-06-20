if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
endif

syn match   cjsxEntity       contained "&[^; \t]*;" contains=cjsxEntityPunct
syn match   cjsxEntityPunct  contained "[&.;]"

syn region  cjsxEscapeBlock start=/{/ end=/}/ contained contains=@coffeeAll keepend
syn region  cjsxEscapeBlockEscape start=/#{/ end=/}/ contained keepend

syn region  csjxAttributeString contained start=/"/ end=/"/ contains=@Spell,coffeeInterp
syn region  csjxAttributeString contained start=/'/ end=/'/ contains=@Spell

syn match   cjsxAttribProperty /[A-Za-z_][A-Za-z0-9_-]*/ contained
syn region  cjsxAttrib start=/\s[A-Za-z_][A-Za-z0-9_-]/hs=s+1 end=/=/ contained contains=cjsxAttribProperty

syn region  cjsxOpenTag start=/<[A-Za-z_][A-Za-z0-9-_]*/ end=/>/ contains=coffeeNumber,coffeeFloat,csjxAttributeString,cjsxAttrib,cjsxEscapeBlock

syn match   cjsxEndTag /<\/[A-Za-z_][A-Za-z0-9-_]*>/ contained

syn region  cjsxElement keepend start=/<[A-Za-z_][A-Za-z0-9-_]*/ end=/\/>\|<\/[A-Za-z_][A-Za-z0-9-_]*>/ contains=cjsxOpenTag,cjsxEndTag,cjsxEscapeBlockEscape,cjsxEscapeBlock,cjsxEntity

"" The default highlighting.
hi def link csjxAttributeString String
hi def link cjsxOpenTag         Function
hi def link cjsxTagName         Function
hi def link cjsxEndTag          Function
hi def link cjsxEntityPunct     Type
hi def link cjsxEntity          Statement
hi def link cjsxAttribProperty  Type
