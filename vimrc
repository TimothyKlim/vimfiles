" Run pathogen for load all plugins
call pathogen#runtime_append_all_bundles()

" Syntax highlight on
syntax enable

" Color scheme
if has("gui_running")
  set background=light
else
  set background=dark
  let g:solarized_termcolors=256
end

colorscheme solarized

" Disable swaping files
set noswapfile
