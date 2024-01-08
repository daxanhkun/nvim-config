lua require('daxanhkun.init')

noremap <Up>    <Nop>
noremap <Down>  <Nop>
noremap <Left>  <Nop>
noremap <Right> <Nop>
nmap 0 ^


nmap <C-_> gcc
vmap <C-_> gc
nmap <C-a> gg0vG$
vmap <C-y> "+y
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTree<CR>
noremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-q> :Rg<CR>
nnoremap <C-p> :Files<CR>
nmap <F8> :TagbarToggle<CR>

" RSpec.vim mappings
let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "{spec}"

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>



:set completeopt-=preview " For No Previews
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:auto_save = 1  " enable AutoSave on Vim startup
" if executable(s:clip)
" augroup WSLYank
" 		autocmd!
" 		autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
" augroup END
" endif

map <Leader>ct :Start! ctags -R ./ --languages=ruby --exclude={.git,log,app/assets/webpack,node_modules,"*.min.js","*.min.css"}<CR>
map <Leader>` :Start! ctags -R ./ $(bundle list --paths) --languages=ruby --exclude={.git,log,app/assets/webpack,node_modules,"*.min.js","*.min.css"}<CR>
map <Leader>w <ESC>:FixWhitespace<CR>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.fzf#shellescape(<q-args>),
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

