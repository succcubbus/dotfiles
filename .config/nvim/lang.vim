let g:LanguageClient_serverCommands = {
    \ 'rust': ['rls'],
    \ 'kotlin': ['kls'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
nnoremap <silent> <F7> :call LanguageClient#textDocument_references()<CR>
nnoremap <silent> <leader>f :call LanguageClient#textDocument_formatting()<CR>

let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
