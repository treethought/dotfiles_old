"###################################################################################
"       __  ___                      _                    
"      /  |/  /____ _ ____   ____   (_)____   ____ _ _____
"     / /|_/ // __ `// __ \ / __ \ / // __ \ / __ `// ___/
"    / /  / // /_/ // /_/ // /_/ // // / / // /_/ /(__  ) 
"   /_/  /_/ \__,_// .___// .___//_//_/ /_/ \__, //____/  
"                 /_/    /_/               /____/         
"
"###################################################################################

"***********************************************************************************

" Main Vim Keybinds

"***********************************************************************************


" escape to enter normal mode from term
tnoremap <Esc> <C-\><C-n>

" Set leader to space bar
let mapleader = " "
let maplocalleader = " "

" General
nmap <Leader>w :w<CR>
nmap <Leader>rr :source ~/.config/nvim/init.vim<CR>

nmap <Leader>ss :mks!<CR>


" Window Navigation
" Navigate to left window.
nnoremap <C-h> <C-w>h
" Navigate to down window.
nnoremap <C-j> <C-w>j
" Navigate to top window.
nnoremap <C-k> <C-w>k
" Navigate to right window.
nnoremap <C-l> <C-w>l
" Horizontal split then move to bottom window.
" nnoremap <Leader>- <C-w>s
" Vertical split then move to right window.
" nnoremap <Leader>\| <C-w>v<C-w>l
" Cycle tabs with Tab and Shift+Tab
" nnoremap<silent> <Tab> :bnext<CR>
" nnoremap<silent> <S-Tab> :bprevious<CR>
" Kill buffer with Space+bk
" nnoremap<silent> <Space>bk :bdelete<CR> 

"Faster ESC.
inoremap jk <ESC>
inoremap kj <ESC>

" Indent controls
" Reselect text ater indent/unindent.
vnoremap < <gv
vnoremap > >gv
" Tab to indent in visual mode.
vnoremap <Tab> >gv
" Shift+Tab to unindent in visual mode.
vnoremap <S-Tab> <gv

" Text alignment
nnoremap <Leader>Al :left<CR>
nnoremap <Leader>Ac :center<CR>
nnoremap <Leader>Ar :right<CR>
vnoremap <Leader>Al :left<CR>
vnoremap <Leader>Ac :center<CR>
vnoremap <Leader>Ar :right<CR>

"***********************************************************************************

" Plugin specific keybinds

"***********************************************************************************
 
" COC Keybinds
xmap <leader>cf <Plug>(coc-format-selected)
nmap <leader>cf <Plug>(coc-format-selected)

nmap <Leader>bf :call CocAction('format')<CR>

" Using CocList
" Show all diagnostics
nnoremap  <Leader>cdi  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap  <Leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap  <Leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <Leader>co  :<C-u>CocList outline<cr>


" Git keybinds
" Git status
" nnoremap  <Leader>gs  :Gstatus<cr>
" Git diff in split window
" nnoremap  <Leader>gd  :Gdiffsplit<cr>
" " Git commit
" nnoremap  <Leader>gc  :Gcommit<cr>
" " Git push 
" nnoremap  <Leader>gP  :Gpush<cr>
" " Git pull 
" nnoremap  <Leader>gp  :Gpull<cr>
" " Git move 
" nnoremap  <Leader>gm  :Gmove<cr>
" " Git merge 
" nnoremap  <Leader>gM  :Gmerge<cr>
" " browse current file on web
" nnoremap  <Leader>gb  :Gbrowse<cr>
" " browse current line on web
" nnoremap  <Leader>gbl  :CocCommand git.browserOpen<cr>
" " View chunk information in preview window. 
" nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" " View commit information in preview window. 
" nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>
" " Toggle git gutter sign columns
" nnoremap  <Leader>gg  :CocCommand git.toggleGutters<cr>


" Magit
nmap <Leader>gs :Magit<CR>



" FZF 
nmap <Leader>p :Buffers<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
nmap <Leader>g :Rg<CR>
nmap <Leader>m :Marks<CR>
nmap <Leader>fn :FZF ~/notes<CR>
" nmap <Leader>gn :

" search vimiwiki notes
nmap <Leader>n :
