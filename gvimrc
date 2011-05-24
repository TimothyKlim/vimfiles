" Remove menu, toolbar and scrollbars
set guioptions-=T
set guioptions-=m
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b

" Without bell
set vb

" Without welcome message
set shortmess+=I

if has("gui_macvim")
" Set font like textmate
  set guifont=Monaco:h12

  " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt

  " Background transparency
  let g:bg_transparent_status = 0

  function g:bg_transparent()
    if g:bg_transparent_status == 0
      let g:bg_transparent_status = 1
      
      set transparency=20
    else
      let g:bg_transparent_status = 0
      
      set transparency=0
    endif
  endfunction

  map <F2> <esc>:call g:bg_transparent()<cr>
end  

" Set cursor blink off
set guicursor=a:blinkoff0

" Use my default window size
set columns=150
set lines=42

" Hide mouse cursor while typing
set mousehide
