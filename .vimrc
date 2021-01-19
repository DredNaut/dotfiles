execute pathogen#infect()
syntax on
filetype plugin indent on
set t_Co=256
set laststatus=2

" -------AIRLINE-----------{{{
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
" }}}

" -------REMAPPED KEYS-------{{{
inoremap jk <Esc>
inoremap JK <Esc>
nnoremap gb :bn<CR>
nnoremap gB :bp<CR>
" }}}

" -------CUSTOM FILE SETTINGS-------{{{
set relativenumber
set number
set hlsearch
set nowrap
set smartindent
set autoindent
set wildmode=longest,list,full
set wildmenu

" Give me sane tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
set textwidth=79
set autoindent
set fileformat=unix
autocmd FileType make setlocal noexpandtab

" Use z-f and z-o for all basic folding needs
set foldmethod=manual
nnoremap <space> za

" Keep that damn cursor in the center of the screen
set scrolloff=90

let g:tmuxline_preset = 'nightly_fox'
