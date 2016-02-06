" Whitespace and Colorscheme
" ------------------------------------------------------------
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/
set t_Co=256
color wombat256mod
syntax on                       " turns syntax highlighting on

" before writing to any file, this function call will remove any extra white space at the end of a line
" au! BufWrite,FileWritePre * call RemoveWhiteSpace()
autocmd BufWritePre * :%s/\s\+$//e

set nocompatible                " (cp) use Vim defaults (much better)
set ruler                       " (ru) show the cursor position at all times
set showcmd                     " (sc) display an incomplete command in the lower right
set formatoptions=croq          " (fo) influences how vim automatically formats text
set backspace=indent,eol,start  " (bs) allows backspacing beyond starting point of insert mode, indents and line breaks
set nrformats+=alpha            " (nf) adds alpha chars to list that gets incremented/decremented with ^A/^X
set listchars+=tab:>-           " (lcs) strings used in 'list' mode to show hidden characters (default=eol:$)
set listchars+=trail:-
set winminheight=0              " (wmh) the minimal height of the window when it's not the current window
set linebreak                   " (lbr) wrap long lines at a space instead of in the middle of a word
set sidescroll=5                " (ss) the minimal number of columns to scroll horizontally
set listchars+=precedes:<       " (lcs) when 'nowrap', character to indicate that line continues off the page
set listchars+=extends:>
let html_use_css = 1            " the ':%TOhtml' command generates html without <font> tags
filetype indent plugin on
set wildmenu
set nostartofline
set laststatus=2
set confirm
set visualbell
set t_vb=
set mouse=a                     " Press <Shift> to escape the mouse and be able to select Copy
set cmdheight=2
set notimeout ttimeout ttimeoutlen=200

" Real programmers use spaces instead of TABS
" ------------------------------------------------------------
set autoindent                  " (ai) turn on auto-indenting (great for programers)
set copyindent                  " (ci) when auto-indenting, use the indenting format of the previous line
set tabstop=2                   " (ts) width (in spaces) that a <tab> is displayed as
set shiftwidth=2                " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
set textwidth=75                " (tw) number of columns before an automatic line break is inserted (see formatoptions)
set softtabstop=2               " sts
set expandtab                   " et
set shiftround

" Disable stupid backup and swap files
" ------------------------------------------------------------
set nobackup
set nowritebackup
set noswapfile

" Search
" ------------------------------------------------------------
set wrapscan                    " (ws) allows search to wrap to top of document when the bottom has been hit
set incsearch                   " (is) highlights what you are searching for as you type
set hlsearch                    " (hls) highlights all instances of the last searched string
set ignorecase                  " (ic) ignores case in search patterns
set smartcase                   " (scs) don't ignore case when the search pattern has uppercase
set infercase                   " (inf) during keyword completion, fix case of new word (when ignore case is on)


" File Specific Settings
" ------------------------------------------------------------
au FileType xhtml,html,htm,php,xml setlocal tabstop=2
au FileType xhtml,html,htm,php,xml setlocal shiftwidth=2
au FileType xhtml,html,htm,php,xml setlocal softtabstop=2   " (sts) makes spaces feel like tabs (like deleting)
au FileType c,h,java,js setlocal mps+==:;                   " allow the match pairs operation (%) to work with '=' and ';'
au FileType c,h setlocal cindent                            " enable the intelligent cindent (cin) feature for the following files
au FileType java,js setlocal smartindent                    " enable the smartindenting (si) feature for the following files
au FileType txt setlocal fo+=tn
au FileType rst setlocal tw=75 sts=2 sw=2 et cc=+1 nowrap fo-=t

" Prevent malakies kata to paste
set paste


" Plugins
" -----------------------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
