" ---- Preferences
    "colo and standard setup stuff
    set number
    set relativenumber
    syntax on
    filetype plugin indent on
    set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab


" ---- NOPs
    "a bunch of no ops
    inoremap <Up> <Nop>
    nnoremap <Up> <Nop>
    inoremap <Down> <Nop>
    nnoremap <Down> <Nop>
    inoremap <Left> <Nop>
    nnoremap <Left> <Nop>
    inoremap <Right> <Nop>
    nnoremap <Right> <Nop>
    "uncomment later if brave enough
    inoremap <Backspace> <Nop>
    nnoremap <Backspace> <Nop>
    inoremap <Enter> <Nop>
    nnoremap <Enter> <Nop>
    inoremap <q> <Nop>
    inoremap <Right> <Nop>
    nnoremap <q> <Nop>
    let mapleader = '-'
    inoremap jk <Esc>
    nnoremap <leader>sv :vsplit $MYVIMRC<cr>
    nnoremap <leader>sh :split $MYVIMRC<cr>
    nnoremap <leader>sr :source $MYVIMRC<cr>

    "vim splits yo
    nmap <silent> <c-k> :wincmd k<CR>
    nmap <silent> <c-j> :wincmd j<CR>
    nmap <silent> <c-h> :wincmd h<CR>
    nmap <silent> <c-l> :wincmd l<CR>

"  ---- Plugin Preferences
    "fixes colors and other shit
    execute pathogen#infect()
    set encoding=utf-8
    set t_Co=256
    set foldmethod=manual
    set scrolloff=90
    let g:Powerline_symbols = 'unicode'
    set clipboard=unnamed


" ---- AIRLINE
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


    " airline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_symbols.whitespace = ''

    "Color Schemes
    let g:airline_theme='badcat'
    colo Tomorrow-Night-Bright

    " air-line fix powerline
    let g:airline#extensions#tabline#enabled = 1

    let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
