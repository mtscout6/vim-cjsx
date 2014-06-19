if exists('b:current_syntax')
  let s:current_syntax=b:current_syntax
  unlet b:current_syntax
endif

syn include @XMLSyntax syntax/xml.vim

if exists('s:current_syntax')
  let b:current_syntax=s:current_syntax
endif

syn region cjsxRegion contains=@XMLSyntax,cjsxRegion,coffeeBlock,jsStringD,jsStringS
  \ start=+<\z([a-zA-Z0-9:\-]\+\)+
  \ skip=+<!--\_.\{-}-->+
  \ end=+</\z1\_\s\{-}>+
  \ end=+/>+
  \ keepend
  \ extend

" JSX attributes should color as CoffeeScript.
syn region xmlString contained start=+{+ end=+}+ keepend contains=coffeeBlock

syn cluster coffeeAll add=cjsxRegion
