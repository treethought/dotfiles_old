"""""""""""""""
" Git Gutter  "
"""""""""""""""
let g:gitgutter_enabled = 1
let g:gitgutter_grep=''

"""""""""""""
"Devicons   "
"""""""""""""
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
" let g:webdevicons_enable_vimfiler = 1
let g:WebDevIconsUnicodeDecorateFileNodes = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_enable_airline_statusline = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
" let g:DevIconsDefaultFolderOpenSymbol = ''
"
" after a re-source, fix syntax matching issues (concealing brackets):
if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif

" let g:webdevicons_enable = 1
" let g:webdevicons_enable_unite = 1
" let g:webdevicons_enable_denite = 1
" let g:webdevicons_enable_nerdtree = 1
" let g:webdevicons_enable_airline_tabline = 1
" let g:webdevicons_enable_vimfiler = 1
" let g:WebDevIconsUnicodeDecorateFileNodes = 1
" let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" let g:webdevicons_enable_airline_statusline = 1
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
" let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
" let g:DevIconsDefaultFolderOpenSymbol = ''

"""""""""""""""""
"Comfy-Scroll   "
"""""""""""""""""
" noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
" noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
" let g:comfortable_motion_friction = 50.0
" let g:comfortable_motion_air_drag = 1.0

""""""""""
" Emoji  "
""""""""""
" set completefunc=emoji#complete


"""""""""""""""""
"Indent Guides  "
"""""""""""""""""
"let g:indentLine_char = '▏'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:indent_guides_auto_colors = 1
let g:indentLine_fileTypeExclude = [
      \'defx',
      \'markdown',
      \'denite',
      \'startify',
      \'tagbar',
      \'vista_kind',
      \'vista'
      \]

"""""""""""""
"Autopairs  "
"""""""""""""
" let g:AutoPairsFlyMode = 1


"""""""""""""
" Rainbow Brackets
"""""""""""""
let g:rainbow_active = 1


"""""""""""""
"Ultinsips  "
"""""""""""""
" These were interfering with coc.nvims completion keybinds
"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<c-b>"
"let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"let g:UltiSnipsListSnippets="<c-tab>"

""""""""""""
"Startify  "
""""""""""""
" function! s:center(lines) abort
"   let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
"   let centered_lines = map(copy(a:lines),
"         \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
"   return centered_lines
" endfunction
" let s:header= [
"       \"▄▀▀▄ ▄▀▀▄  ▄▀▀█▀▄    ▄▀▀▄ ▄▀▄      ▄▀▀▄▀▀▀▄  ▄▀▀█▄▄▄▄  ▄▀▀█▄   ▄▀▀▄▀▀▀▄  ▄▀▀█▄▄▄▄  ▄▀▀▄▀▀▀▄ ",
"       \"█   █    █ █   █  █  █  █ ▀  █     █   █   █ ▐  ▄▀   ▐ ▐ ▄▀ ▀▄ █   █   █ ▐  ▄▀   ▐ █   █   █ ",
"       \"▐  █    █  ▐   █  ▐  ▐  █    █     ▐  █▀▀█▀    █▄▄▄▄▄    █▄▄▄█ ▐  █▀▀▀▀    █▄▄▄▄▄  ▐  █▀▀█▀  ",
"       \"  █   ▄▀      █       █    █       ▄▀    █    █    ▌   ▄▀   █    █        █    ▌   ▄▀    █  ",
"       \"   ▀▄▀     ▄▀▀▀▀▀▄  ▄▀   ▄▀       █     █    ▄▀▄▄▄▄   █   ▄▀   ▄▀        ▄▀▄▄▄▄   █     █   ",
"       \"          █       █ █    █        ▐     ▐    █    ▐   ▐   ▐   █          █    ▐   ▐     ▐   ",
"       \"          ▐       ▐ ▐    ▐                   ▐                ▐          ▐                  ",
"       \"",
"       \"",
"       \"                                          ;::::;",
"       \"                                        ;::::; :;",
"       \"                                      ;:::::'   :;",
"       \"                                     ;:::::;     ;.",
"       \"                                    ,:::::'       ;           OOO\ ",
"       \"                                    ::::::;       ;          OOOOO\ ",
"       \"                                    ;:::::;       ;         OOOOOOOO",
"       \"                                   ,;::::::;     ;'         / OOOOOOO",
"       \"                                 ;:::::::::`. ,,,;.        /  / DOOOOOO",
"       \"                               .';:::::::::::::::::;,     /  /     DOOOO",
"       \"                              ,::::::;::::::;;;;::::;,   /  /        DOOO",
"       \"                             ;`::::::`'::::::;;;::::: ,#/  /          DOOO",
"       \"                             :`:::::::`;::::::;;::: ;::#  /            DOOO",
"       \"                             ::`:::::::`;:::::::: ;::::# /              DOO",
"       \"                             `:`:::::::`;:::::: ;::::::#/               DOO",
"       \"                              :::`:::::::`;; ;:::::::::##                OO",
"       \"                              ::::`:::::::`;::::::::;:::#                OO",
"       \"                              `:::::`::::::::::::;'`:;::#                O",
"       \"                               `:::::`::::::::;' /  / `:#",
"       \"                                ::::::`:::::;'  /  /   `#",
"       \]

" let g:startify_change_to_dir = 1
" let g:startify_custom_header = s:center(s:header)
" Optionally create and use footer
"let s:header= []
"let g:startify_custom_footer = s:center(s:footer)

"""""""
"COC  "
"""""""

" Define Error Symbols and colors
let g:coc_status_warning_sign = ''
let g:coc_status_error_sign = ''
hi CocWarningSign ctermfg=blue 
hi CocErrorSign ctermfg=red
hi CocInfoSign ctermfg=yellow
hi CocHintSign ctermfg=green

" Transparent popup window
hi! Pmenu ctermbg=black
hi! PmenuSel ctermfg=2
hi! PmenuSel ctermbg=0

" Brighter line numbers
hi! LineNr ctermfg=NONE guibg=NONE

" KEY REMAPS ""
set updatetime=300
let g:ycm_server_python_interpreter = '/usr/bin/python3'
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'

" Extensions. Some need configuration. 
" coc-java needs a valid JVM filepath defined in coc-settings
" coc-ccls needs ccls (available on aur)
" coc-eslint needs eslint npm package installed globally
let g:coc_global_extensions = [
      \'coc-html', 
      \'coc-xml', 
      \'coc-vimlsp', 
      \'coc-sql', 
      \'coc-go', 
      \'coc-css', 
      \'coc-sh', 
      \'coc-snippets',
      \'coc-prettier',
      \'coc-emmet',
      \'coc-tsserver',
      \'coc-docker',
      \'coc-pairs',
      \'coc-json',
      \'coc-python',
      \'coc-highlight',
      \'coc-git',
      \'coc-gitignore',
      \'coc-emoji',
      \'coc-lists',
      \'coc-stylelint',
      \'coc-yaml',
      \]

      " \'coc-eslint',
      " \'coc-flutter'
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Remap for format selected region
" nmap <leader>f  <Plug>(coc-format-selected)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" coc-snippets
" Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)

" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

" " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" Make <tab> used for trigger completion, completion confirm, snippet expand and jump
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()


" augroup MyAutoCmd
"   autocmd!
"   " Setup formatexpr specified filetype(s).
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   " Update signature help on jump placeholder
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" map <tab> to trigger completion and navigate to the next item
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction




" include .venv folders to detemrine workspaces
" (useful for multiple python interpreters in a single workspace (project))
" autocmd FileType python let b:coc_root_patterns = ['.venv', '.vim', '.git']
""""""""""
"Markdown"
""""""""""
let g:mkdp_auto_close = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" dont conceal text in markdown
set conceallevel=1 

"""""""""""""""""
" Autosaving    "
"""""""""""""""""
" let g:auto_save        = 1
" let g:auto_save_silent = 1
" let g:auto_save_events = ["InsertLeave", "TextChanged", "FocusLost"]


" " Centered floating window for fzf
" let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
"
" go syntax highlighting - may slow down vim
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1

" use coc for documentation with K
" if choose to use vim-go, the popup is better
" let g:go_doc_keywordprg_enabled = 0
" let g:go_doc_popup_window = 1
"

" vimwiki
let g:vimwiki_list = [{'path': '~/notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" todoist
let todoist = {
\ 'icons': {
\   'unchecked': '  ',
\   'checked':   '  ',
\   'loading':   '  ',
\   'error':     '  ',
\ },
\}
