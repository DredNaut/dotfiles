" -------PATHOGEN--------{{{
execute pathogen#infect()
syntax on
filetype plugin indent on
" }}}

"-------AIRLINE-------{{{

"Add weather to vim
"function! UpdateWeather(...)
"    let b:weather = substitute(system('curl -s "wttr.in/?format=%l%20%c%20%t&period=5" 2>&1'),'\n','','g')
"    let w:airline_section_y = b:weather
"    return 0
"endfunction

"nnoremap uw :call UpdateWeather()<CR>
"call airline#add_statusline_func('UpdateWeather')

set t_Co=256
set laststatus=2
let g:Powerline_symbols = 'unicode'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_theme='wombat'
" the separator used on the left side
 let g:airline_left_sep=''
 " the separator used on the right side
 let g:airline_right_sep=''
 " air-line
  let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
      let g:airline_symbols = {}
      endif

      " unicode symbols
      let g:airline_left_sep = '»'
      let g:airline_left_sep = '▶'
      let g:airline_right_sep = '«'
      let g:airline_right_sep = '◀'
      let g:airline_symbols.linenr = '␊'
      let g:airline_symbols.linenr = '␤'
      let g:airline_symbols.linenr = '¶'
      let g:airline_symbols.branch = '⎇'
      let g:airline_symbols.paste = 'ρ'
      let g:airline_symbols.paste = 'Þ'
      let g:airline_symbols.paste = '∥'
      let g:airline_symbols.whitespace = 'Ξ'

 "     " airline symbols
      let g:airline_left_sep = ''
      let g:airline_left_alt_sep = ''
      let g:airline_right_sep = ''
      let g:airline_right_alt_sep = ''
      let g:airline_symbols.branch = ''
      let g:airline_symbols.readonly = ''
      let g:airline_symbols.linenr = ''
    let g:airline_symbols.whitespace = ''
"}}}

" -------REMAPPED KEYS-------{{{
inoremap jk <Esc>
inoremap <Del> <Nop>
nnoremap <Del> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Down> <Nop>
inoremap <Up> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>
nnoremap <leader>l :ls<CR>:b<space>
nnoremap ; :FZF<CR>
" }}}
" 
" -------CUSTOM FILE SETTINGS-------{{{
set relativenumber
set number
set hlsearch
set nowrap
set smartindent
set autoindent
set wildmode=longest,list,full
set wildmenu

" for fuzzy searching
set rtp+=/usr/local/opt/fzf

" Colorscheme
colorscheme vimbrant

" Give me sane tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
autocmd FileType make setlocal noexpandtab

" Use z-f and z-o for all basic folding needs
set foldmethod=manual

" Keep that damn cursor in the center of the screen
set scrolloff=90

" }}}

" -------VIM FILE SETTINGS-------{{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" -------TEX FILE SETTINGS-------{{{
augroup filetype_tex
    autocmd!
    autocmd FileType tex setlocal foldmethod=marker
augroup END

augroup filetype_markdown
    autocmd!
    autocmd FileType markdown colorscheme PaperColor
    autocmd FileType markdown AirlineTheme seagull
    autocmd FileType markdown     :iabbrev lineblue <ESC>0f a<span style="color:blue"><ESC>A</span><ESC>F>a
    autocmd FileType markdown     :iabbrev linered <ESC>0f a<span style="color:red"><ESC>A</span><ESC>F>a
    autocmd FileType markdown     :iabbrev linegreen <ESC>0f a<span style="color:green"><ESC>A</span><ESC>F>a
    autocmd FileType markdown     :iabbrev lineorange <ESC>0f a<span style="color:orange"><ESC>A</span><ESC>F>a
    autocmd FileType markdown     :iabbrev rmline <ESC>0f<df>f<df>0
    autocmd FileType markdown     :iabbrev mdpic <ESC>i![]()<ESC>k$

augroup filetype_tex
    autocmd!
    autocmd FileType plaintex     :iabbrev array \left[\begin{array}<ESC>o\end{array}\right]<ESC>

augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
augroup END
" }}}
