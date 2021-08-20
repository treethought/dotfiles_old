
"#####################################################################################################
"                           ____     __                     _                 
"                          / __ \   / /  __  __   ____ _   (_)   ____    _____
"                         / /_/ /  / /  / / / /  / __ `/  / /   / __ \  / ___/
"                        / ____/  / /  / /_/ /  / /_/ /  / /   / / / / (__  ) 
"                       /_/      /_/   \__,_/   \__, /  /_/   /_/ /_/ /____/  
"                                              /____/
"######################################################################################################

" Install vim-plugged if not already installed
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.local/share/nvim/plugged')

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'rhysd/git-messenger.vim'

Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

" FZF
set rtp+=~/.vim/bundle/fzf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'


" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'

" treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Vim Surround
Plug 'tpope/vim-surround'

" Comments
Plug 'tpope/vim-commentary'

"Vim Motion
Plug 'easymotion/vim-easymotion'

"Rainbow Brackets
Plug 'luochen1990/rainbow'

"" Indent guides
 Plug 'Yggdroot/indentLine'


" start page
Plug 'mhinz/vim-startify'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/everforest'
Plug 'ulwlu/elly.vim'
Plug 'lifepillar/vim-solarized8'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" goyo distraction free mode
Plug 'junegunn/goyo.vim'

" vim wiki for notes
Plug 'vimwiki/vimwiki'

" integrate vimwiki with taskwarrior
Plug 'tbabej/taskwiki'

" todo.txt
Plug 'freitass/todo.txt-vim'

" todoist
Plug 'romgrk/todoist.nvim', { 'do': ':TodoistInstall' }



"Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'mzlogin/vim-markdown-toc'

" Pipenv
Plug 'plytophogy/vim-virtualenv'
Plug 'PieterjanMontens/vim-pipenv'

" readline mappings for insert mode
Plug 'tpope/vim-rsi'

" colorize color codes
Plug 'chrisbra/Colorizer'

" Ranger integration
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

Plug 'voldikss/vim-floaterm'




" Languages

" Vim Javascript
Plug 'pangloss/vim-javascript'

" Language Packs
Plug 'sheerun/vim-polyglot'

" vlang
Plug 'ollykel/v-vim'

Plug 'hashivim/vim-terraform'

" typescript
Plug 'leafgarland/typescript-vim'

" generate go tests
Plug 'buoto/gotests-vim'

" ale and vim-buf for proto linting
Plug 'dense-analysis/ale'
Plug 'bufbuild/vim-buf'
let g:ale_linters = {
\   'proto': ['buf-lint',],
\}
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters_explicit = 1


call plug#end()
