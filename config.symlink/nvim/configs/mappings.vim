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
" nmap <Leader>w :w<CR>
nmap <Leader>bs :w<CR>
nmap <Leader>rr :source ~/.config/nvim/init.vim<CR>

" nmap <Leader>ss :mks!<CR>

" open fork for current repo
nmap <Leader>of :!fork open .<CR>


" Window Navigation
" Navigate to left window.
" nnoremap <C-h> <C-w>h
nnoremap <leader>wh <C-w>h

" Navigate to down window.
" nnoremap <C-j> <C-w>j
nnoremap <leader>wj <C-w>j

" Navigate to top window.
" nnoremap <C-k> <C-w>k
nnoremap <leader>wk <C-w>k
" Navigate to right window.
" nnoremap <C-l> <C-w>l
nnoremap <leader>wl <C-w>l

" close pane
nnoremap <leader>wc <C-w>c

" Horizontal split then move to bottom window.
" nnoremap <Leader>- <C-w>s
" Vertical split then move to right window.
" nnoremap <Leader>\| <C-w>v<C-w>l
" Cycle tabs with Tab and Shift+Tab
" nnoremap<silent> <Tab> :bnext<CR>
" nnoremap<silent> <S-Tab> :bprevious<CR>
" Kill buffer with Space+bk
nnoremap<silent> <Space>bk :bdelete<CR> 

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


" coc diagnostics
try
    nmap <silent> [e :call CocAction('diagnosticNext')<cr>
    nmap <silent> ]e :call CocAction('diagnosticPrevious')<cr>
endtry

" coc go


" add imports on save
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
" autocmd BufWritePre *.go :silent call CocAction('format')
autocmd FileType go nmap gtj :CocCommand go.tags.add json<cr>
autocmd FileType go nmap gty :CocCommand go.tags.add yaml<cr>
autocmd FileType go nmap gtx :CocCommand go.tags.clear<cr>

" go-fmt on save

" Magit
" nmap <Leader>gs :Magit<CR>

" NERDTree
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>op :NERDTreeToggle<CR>


" FZF 
nmap <Leader>p :Buffers<CR>
nmap <Leader>ff :Files<CR>
" nmap <Leader><Leader>f :Files<CR>
nmap <Leader>t :Tags<CR>
nmap <Leader>g :Rg<CR>
nmap <Leader>sp :Rg<CR>
nmap <Leader>m :Marks<CR>
nmap <Leader>fn :FZF ~/notes<CR>
" nmap <Leader>gn :

" search vimiwiki notes
" fix spelling error to top suggestion
nmap <Leader>z mz[s1z=e'z

" quick vertical split terminal
nmap <Leader>vv :vs\|:terminal<CR>

" open todo.txt file
nmap <Leader>ot :e ~/notes/todo.txt<CR>

nmap <Leader>fn :FZF ~/notes<CR>



" special git stuff
" browse current file on web
nnoremap  <Leader>go  :Gbrowse<cr>
" browse current line on web
nnoremap  <Leader>gol  :CocCommand git.browserOpen<cr>
" View chunk information in preview window. 
nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" View commit information in preview window. 
nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>
" Toggle git gutter sign columns
" nnoremap  <Leader>gg  :CocCommand git.toggleGutters<cr>
" Lazygit
nnoremap <silent> <Leader>lg :call ToggleLazyGit()<CR>
nnoremap <silent> <Leader>gt :call ToggleGitui()<CR>
nnoremap <silent> <Leader>gg :call ToggleMagit()<CR>


" lazydocker 
nnoremap <silent> <Leader>ld :call ToggleLazyDocker()<CR>
"
" Ranger
let g:ranger_map_keys = 0
nmap <Leader><Leader>r :Ranger<CR>

" swich project via tmuxinator
nnoremap <silent> <Leader>pp :call ToggleProject()<CR>


" Floaterm commands
nmap <Leader><Leader>n :FloatermToggle <CR>
" nmap <Leader><Leader>f :FloatermNew fzf<CR>
" nmap <Leader><Leader>g :FloatermNew lazygit<CR>

" easymotion commands
"
map <Leader>s <Plug>(easymotion-prefix)
" map <Leader><Leader>. <Plug>(easymotion-repeat)
" map <Leader><Leader>f <Plug>(easymotion-bd-f)
" nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
" nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)
" nmap <Leader><Leader>j <Plug>(easymotion-overwin-line)
" nmap <Leader><Leader>k <Plug>(easymotion-overwin-line)
" map  <Leader><Leader>w <Plug>(easymotion-bd-w)
" map <Leader><Leader>w <Plug>(easymotion-overwin-w)
