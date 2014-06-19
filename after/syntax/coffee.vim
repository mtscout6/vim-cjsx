if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
endif

" &entities; compare with dtd
syn match   xmlEntity       contained "&[^; \t]*;" contains=xmlEntityPunct
syn match   xmlEntityPunct  contained "[&.;]"

syn region  xmlString contained start=/"/ end=/"/ contains=@Spell,coffeeInterp
syn region  xmlString contained start=/'/ end=/'/ contains=@Spell

" no highlighting for xmlEqual (xmlEqual has no highlighting group)
syn match   xmlEqual /=/ contained display

syn match   xmlAttribProperty /\s[A-Za-z_][A-Za-z0-9_-]*/ contained
syn match   xmlAttrib /\s[A-Za-z_][A-Za-z0-9_-]*\s*=/ contained contains=xmlEqual,xmlAttribProperty

syn region  cjsxEscapeBlock start=/[^#]{/ end=/}/ contained contains=@coffeeAll keepend

syn region  xmlOpenTag start=/<[A-Za-z_][A-Za-z0-9-_]*/ end=/>/ contains=cjsxEscapeBlock,coffeeNumber,coffeeFloat,xmlString,xmlAttrib

syn match   xmlEndTag /<\/[A-Za-z_][A-Za-z0-9-_]*>/ contained

syn region  xmlElement keepend start=/<[A-Za-z_][A-Za-z0-9-_]*/ end=/(\/>|<\/[A-Za-z_][A-Za-z0-9-_]*>)/ contains=xmlOpenTag,xmlEndTag,cjsxEscapeBlock,xmlEntity

" The default highlighting.
hi def link xmlOpenTag         Function
hi def link xmlTagName         Function
hi def link xmlEndTag          Function
hi def link xmlEntityPunct     Type
hi def link xmlEntity          Statement
hi def link xmlAttribProperty  Type
