" General settings
set fileencodings=utf-8,latin1
set hidden
set nocompatible
set nolazyredraw
set shellslash			    " Use forward slashes even on windows
set ttyfast
set wildmenu                " Better command-line completion

" Filetype settings
filetype plugin indent on
syntax on
set modeline			    " Read file-specific settings

" Display options
set background=dark
set display+=lastline	    " Display incomplete lines
set fillchars=""            " Disable characters in separators    
set number
set ruler
set scrolloff=5			    " Keep lines visible at the viewport edge
set showcmd
set showmatch			    " Indicate matching brackets
set showmode

" Whitespace and indentation
set autoindent			    " Copy indentation from previous line
set expandtab			    " Spaces instead of tabs
set shiftwidth=4		    " Indentation step size
set softtabstop=4
set tabstop=4

" Searching
set hlsearch			    " Highlight search patterns
set ignorecase
set incsearch			    " Show matches while typing
set smartcase			    " Override 'ignorecase' when pattern contains uppercase

" Editing
set backspace=2			    " Allow backspacing over indents, eol and insert start
set cpoptions+=$
set formatoptions+=tcqr	    " Auto-wrap text and comments, format comments with "gq"
        				    " and insert comment leader on newline
set textwidth=79		    " Default line length limit

" File handling
set autoread                " Automatically read external file changes
set wildignore+=*.aux,*.git
