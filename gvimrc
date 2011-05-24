" Remove menu, toolbar and scrollbars
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b

" Set font like textmate
if has("mac")
  set guifont=Monaco:h12
endif

" Without bell
set vb

" Without welcome message
set shortmess+=I
