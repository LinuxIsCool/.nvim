"   _____  _                                ___              _                                         
"  /  ___|| |                              / _ \            | |                                        
"  \ `--. | |__    __ _ __      __ _ __   / /_\ \ _ __    __| |  ___  _ __  ___   ___   _ __           
"   `--. \| '_ \  / _` |\ \ /\ / /| '_ \  |  _  || '_ \  / _` | / _ \| '__|/ __| / _ \ | '_ \          
"  /\__/ /| | | || (_| | \ V  V / | | | | | | | || | | || (_| ||  __/| |   \__ \| (_) || | | |         
"  \____/ |_| |_| \__,_|  \_/\_/  |_| |_| \_| |_/|_| |_| \__,_| \___||_|   |___/ \___/ |_| |_|         
"                                                                                                      
"      _   _  _              _____                 __  _                             _    _               
"     | | | |(_)            /  __ \               / _|(_)                           | |  (_)              
"     | | | | _  _ __ ___   | /  \/  ___   _ __  | |_  _   __ _  _   _  _ __   __ _ | |_  _   ___   _ __  
"     | | | || || '_ ` _ \  | |     / _ \ | '_ \ |  _|| | / _` || | | || '__| / _` || __|| | / _ \ | '_ \ 
"     \ \_/ /| || | | | | | | \__/\| (_) || | | || |  | || (_| || |_| || |   | (_| || |_ | || (_) || | | |
" Neo  \___/ |_||_| |_| |_|  \____/ \___/ |_| |_||_|  |_| \__, | \__,_||_|    \__,_| \__||_| \___/ |_| |_|
"                                                       __/ |                                          
"                                                      |___/                                           
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                      
" Inspiration From:
" https://github.com/novln/nvim/blob/master/init.vim
"
let b:cache_directory = $HOME . '/.cache/nvim'

call plug#begin('~/.local/share/nvim/plugged')

" Get the dot operator (repeat) functional on plugin commands
Plug 'tpope/vim-repeat'
" A collection of symetric commands shortcuts the use [ and  ] as access keys.
Plug 'tpope/vim-unimpaired'

" This one has a lot of potential. 95 contributors on github, and it's 83%
" python
Plug 'Shougo/denite.nvim'

" ES2015 code snippets (Optional)
" Plug 'epilande/vim-es2015-snippets'

" React code snippets
" Plug 'epilande/vim-react-snippets'

" Ultisnips
" Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
" Plug 'honza/vim-snippets'

" Plug 'dsznajder/vscode-es7-javascript-react-snippets', {
      " \ 'do': 'yarn install --frozen-lockfile && yarn compile' }

" Trigger configuration (Optional)
" let g:UltiSnipsExpandTrigger="<C-l>"
"
" Vimagit inspired by magit for emacs
Plug 'jreybert/vimagit'

Plug 'jiangmiao/auto-pairs'

Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js'

" Polyglot language pack
Plug 'sheerun/vim-polyglot'

" Show indentation level
Plug 'Yggdroot/indentLine'

" NeoMake
Plug 'neomake/neomake'

" COC
" Javascript configuration from: https://thoughtbot.com/blog/modern-typescript-and-react-development-in-vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = [
  \ 'coc-tsserver'
  \ ]
" if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
"   let g:coc_global_extensions += ['coc-prettier']
" endif

if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
  let g:coc_global_extensions += ['coc-eslint']
endif
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <leader>do <Plug>(coc-codeaction)
nmap <leader>rn <Plug>(coc-rename)

Plug 'neoclide/coc-eslint'
Plug 'neoclide/coc-prettier'
" Goyo for distraction free editing!
" And T-shirts!
Plug 'junegunn/goyo.vim'

" Make sure you use single quotes
"
Plug 'tomlion/vim-solidity'
"Jupyter Support for VIM
" Plug 'szymonmaszke/vimpyter'
" autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
" autocmd Filetype ipynb nmap <silent><Leader>i :VimpyterStartJupyter<CR>
" autocmd Filetype ipynb nmap <silent><Leader>n :VimpyterStartNteract<CR>
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-surround'
"-------------------------------------------------------------------------------
"Color Theme
Plug 'tomasiser/vim-code-dark'
Plug 'ajmwagar/vim-deus'
Plug 'arcticicestudio/nord-vim'
"-------------------------------------------------------------------------------
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-speeddating'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

"---------------
" For Javascript and Typescript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"-------------------------------------------------------------------------------
" Trying out vim lightline as an alternative to vim-airline, sticking with
" airline.
" Plug 'itchyny/lightline.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Enable tabline extension
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '|'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'

"-------------------------------------------------------------------------------
" Markdown Composer
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
let g:markdown_composer_open_browser = 1
"-------------------------------------------------------------------------------
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,__pycache__/     " MacOSX/Linux<Paste>
Plug 'ctrlpvim/ctrlp.vim'
"The below 4 lines are for speed!from https://stackoverflow.com/questions/21346068/slow-performance-on-ctrlp-it-doesnt-work-to-ignore-some-folders/22784889#22784889
	let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
	if executable('ag')
	  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
	endif
      let g:ctrlp_cmd = 'CtrlPMixed' " search anything (in files, buffers and MRU files at the same time.)
      let g:ctrlp_working_path_mode = '' " search for nearest ancestor like .git, .hg, and the directory of the current file
      let g:ctrlp_match_window_bottom = 1 " show the match window at the top of the screen
      let g:ctrlp_by_filename = 0
      let g:ctrlp_max_height = 10 " maximum height of match window
      let g:ctrlp_switch_buffer = 'et' " jump to a file if it's open already
      let g:ctrlp_use_caching = 1 " enable caching
      let g:ctrlp_cache_dir = b:cache_directory . '/ctrlp' " define cache path
      let g:ctrlp_clear_cache_on_exit = 0 " speed up by not removing clearing cache everytime
      let g:ctrlp_mruf_max = 250 " number of recently opened files
      let g:ctrlp_show_hidden = 1
	let g:ctrlp_custom_ignore = {
	  \ 'py':  '__pycache__/',
	  \ }
	      " \'py':__pycache__/'
	      "   'bin'
	      "   'develop-eggs',
	      "   'eggs'
	      "   'parts'
	      "   'src/*.egg-info'
	      " set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
nnoremap <silent> <Leader>p :<C-u>CtrlP<CR><Paste>

" A command line fuzzy finder
" Very powerful
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/Software/fzf', 'do': './install --all' }
" This command tells fzf to skip filenames during its :Rg search command.
command! -bang -nargs=* Rg call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, {'options': '--delimiter : --nth 4..'}, <bang>0)

"-------------------------------------------------------------------------------

Plug 'scrooloose/nerdcommenter'
"Comment manager
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

"-------------------------------------------------------------------------------

Plug 'goerz/ipynb_notedown.vim' 

"-------------------------------------------------------------------------------
" Modified vim start screen
Plug 'mhinz/vim-startify'

Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
" Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } " On-demand loading
":help NERDTreeOptions
map <C-n> :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
let NERDTreeIgnore=['\.pyc$', '\~$']

"-------------------------------------------------------------------------------

Plug 'bfredl/nvim-ipy'
let g:nvim_ipy_perform_mappings = 0
map <silent> <leader>s <Plug>(IPy-Run)
map <silent> <leader><Enter> <Plug>(IPy-RunCell)
map <silent> <c-s> <Plug>(IPy-Complete)
map <silent> <c-s> <Plug>(IPy-WordObjInfo)
map <silent> <leader>? <Plug>(IPy-Interrupt)
map <silent> <c-s> <Plug>(IPy-Terminate)

""---------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                      
" Fix for slimux:
set shell=/bin/sh
Plug 'lotabout/slimux'
"Send text between tmux panes!
nmap <Leader>s  :SlimuxREPLSendLine<CR>j
vmap <Leader>s :SlimuxREPLSendSelection<CR>
map  <C-c><C-c> :SlimuxREPLConfigure<CR>
let g:slimux_pane_format = "#W #P "

"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                      
Plug 'vimwiki/vimwiki'
    set nocompatible
    filetype plugin on
    syntax on
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                      

" Initialize plugin system
call plug#end()

" DVC
autocmd! BufNewFile,BufRead Dvcfile,*.dvc,dvc.lock setfiletype yaml

"============u============u============u============u============u============u
" VIM BEHAVIOUR
" Highlight character at column 80
:set colorcolumn=80

" Tab completion in command mode
set wildmenu

"These filetypes are ignored when expanding wildcard searches
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc

" show line numbers
set number

" using only 1 column (and 1 space) while possible
set numberwidth=1 

" Here we map the leader key! This is where things get spicy! The leader key
" in vim is extremely powerful. Wielded by great mages, it unlocks the ability
" to cast spells through one's very own fingertips by merely thinking a string
" of words. Once the energetic vibration of these thoughts pass through the
" keys into the keyboard, the spell is activated and it's consequences take
" effect. Use this key in normal mode to run commands through key bindings!
" * Why do we define it twice? Once with no g, then with a g, what is the
" difference?
let mapleader=","
let g:mapleader=","

" I use this functionallity as close tab
" * For some reason, leader q and leader w are slow.
nmap <leader>bd :bd<cr>

" Here I make shortcuts to various system locations.
" ssh config, fish config, vim config, my personal notes,
nnoremap <leader>es :e ~/.ssh/config<CR>  
nnoremap <leader>ef :e ~/.config/fish/config.fish<CR>  
nnoremap <leader>el :e ~/.log/log.org<CR>  
nnoremap <leader>en :e ~/Notes/<CR>  
nnoremap <leader>ev :e $MYVIMRC<CR>  

" Force reload vimrc
nnoremap <leader>rv :source $MYVIMRC<CR>     

" For copying text out of VIM
set mouse=a

" Syntax Highlighting
syntax enable

" set background=dark
"colorscheme solarized
set t_Co=256
set t_ut=
colorscheme nord
" colorscheme iceberg
" colorscheme codedark
hi Normal guibg=NONE ctermbg=NONE
" colors deus

"Highlight Cursor line
set cursorline
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Enable Intuitive copy and paste
" vnoremap <C-c> "*y
" vnoremap <C-c> "+y
" nnoremap <C-v> "+p
" inoremap <C-v> <C-r>+
set pastetoggle=<F2>

"Use modifier to jump to beginning and end of lines
map <leader>j $
map <leader>f 0

"split more naturally
set splitbelow
set splitright
" Searching
set incsearch       " show 'best match so far' as you type
set hlsearch        " hilight the items found by the search
set ignorecase      " ignores case of letters on searches
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters
"Manually turn off the search highlight
map <leader>/ :nohl<CR>

set nowrap

"Abbreviations
ab h1 hi

" Disable annoying mappings
noremap  <silent> <C-c>  <Nop>
noremap  <silent> <C-w>f <Nop>
noremap  <silent> <Del>  <Nop>
noremap  <silent> <F1>   <Nop>

" [c] Copy selection in clipboard
vmap <silent> <Leader>c "+y

" [x] Cut selection in clipboard
vmap <silent> <Leader>x "+d

" [v] Paste content from clipboard
nmap <silent> <Leader>v "+p
vmap <silent> <Leader>v "+p

" Make buffer movement similar to vimium/vimfx for firefox using let
" g:airline#extensions#tabline#enabled v 1
"
" Cycle tabs 
" Don't fuckin save, it makes things slow, wish I changed this
" earlier...(removing save - Sept 12 2020)
nnoremap <silent> <S-k> :bn<CR>
nnoremap <silent> <S-j> :bp<CR>
" Let's shuffle windows just as easy. Then we can get into nerd tree smoother
" Whatabout shift n and shift p to cycle tabs?
" What do shipt p and shift n do?
" shift p is print behind, and shift n is previous search result.
" OK, we are not changing the above, they actually match vimium in firefox
" Fix Cycle tabs
" nnoremap <silent> <S-j>  <S-l>
" nnoremap <silent> <S-l> :w<CR>:bp<CR>
"
" nnoremap <silent> <S-k> <S-h>
" nnoremap <silent> <S-l> :w<CR>:bn<CR>

" Tab spacing on html
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype djangohtml setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype scss setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=2 sw=2 expandtab
autocmd Filetype cpp setlocal ts=2 sw=2 expandtab
autocmd Filetype c setlocal ts=2 sw=2 expandtab
autocmd Filetype sh setlocal ts=2 sw=2 expandtab
autocmd Filetype fish setlocal ts=2 sw=2 expandtab
autocmd Filetype bash setlocal ts=2 sw=2 expandtab
autocmd Filetype perl setlocal ts=2 sw=2 expandtab

"Maintain cursor and window position when switching buffers
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" For COC
if filereadable(expand("~/.config/nvim/coc.vim"))
	source ~/.config/nvim/coc.vim
endif

" When writing a buffer (no delay).
call neomake#configure#automake('w')

" From Matt Williams
" use 256 colors when possible
" if (&term =~? 'mlterm\|xterm\|xterm-256\|screen-256') || has('nvim')
"     let &t_Co = 256
"     syntax on
"     colorscheme nord
" else
"     colorscheme jellybeans
" endif

"Specify which python to use
" let g:python3_host_prog = '/home/shawn/Software/miniconda3/bin/python'
"---------------------------------------------------------------------------------------------------------------------------------------------------------------------------                                                                                                      
"
"                          .-""    ""--.
"                        ,'             `.
"                       /     ,'          \
"                    `\/     .             |
"                  .===:_,  |              /
"                 / .'""".  ,:=:.         / _.,
"                "   `--. `|/  _\` (    _/-" /
"                     |\_b_9-""  ___) -"-"//'
"                     | --/`--_o"_/'  (6_//
"   P I C C O L O     / ,'    -""    .),-'
"                     (  "-__       `-(
"                      \ |HHH/    /    \
"                       \  -   _./      `-._..._
"                        7----",'/     ..-" .-- "--.._
"                 _.._.-/)  .-',/   .-"  -"           ""--..
"          _..--"|=""--..--""""""./'  .              .-"""-.\
"        ,' .-','     ,'       /.   /              .'       \\
"     .:' ,' ,:      /      ,/'/  /'         _....' _..--""" )
"   ,"/  /  /(      /   _,/' / ,/'         /.    .-"       __|
"  / / /'  (  ""----""""   / ,/           / `:.-"    _.--""  /
"  ||  (    \_       __.-'  /             |`-.`:=._-"    _.-:|
"  \/   \     """""""      /               ""-`  `-"===="-'   \
"  |     "-.        __..-"                    \._.====..       `
"  |        ""--""""                          //..---""\\       .
"  \                                        /'| __...---.\      |
"
