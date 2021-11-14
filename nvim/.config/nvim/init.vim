:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
call plug#begin('~/.vim/plugged')
Plug 'rafi/awesome-vim-colorschemes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
Plug 'vimwiki/vimwiki'
Plug 'alvan/vim-php-manual', {'for': 'php'}
Plug 'preservim/nerdtree'
Plug 'Mofiqul/vscode.nvim'
Plug 'tomasiser/vim-code-dark'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvie/vim-flake8'
"let g:python3_host_prog = '/usr/bin/python3'
"let g:python_host_prog = '/usr/bin/python3'



call plug#end()
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "" }, -- List of parsers to ignore installing
  indent = {
    enable = true,
    disable = {"html"},
    },
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust",},  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF

let g:vscode_style = "dark"
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

nmap <silent> gd <Plug>(coc-definition)
"colorschem molokai 
colorscheme vscode
"colorscheme codedark
let g:vimwiki_list = [{'path': '~/storage/shared/cloud/notes',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
let g:PHP_vintage_case_default_indent=1
inoremap jk <ESC>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
"set relativenumber
set nu
set nowrap
"set scrolloff=8
set termguicolors
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
highlight lCursor guifg=NONE guibg=Cyan
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
