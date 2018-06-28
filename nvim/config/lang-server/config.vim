let g:LanguageClient_serverCommands = {
      \ 'vue': ['vls'],
      \ 'javascript': ['javascript-typescript-stdio'],
      \ 'javascript.jsx': ['javascript-typescript-stdio'],
      \ 'typescript': ['javascript-typescript-stdio'],
      \ 'typescript.tsx': ['javascript-typescript-stdio']
      \ }
let g:LanguageClient_autoStart = 1 " Automatically start language servers.

nmap <silent> <buffer> <leader>f :call LanguageClient_textDocument_definition()<CR>
