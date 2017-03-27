set clipboard=unnamed

nnoremap <leader>va :VtrAttachToPane<cr>
nnoremap <leader>vfc :VtrFlushCommand<cr>
nnoremap <leader>vsf :VtrSendFile<cr>
nnoremap <leader>vrs :VtrSendCommandToRunner<cr>
nnoremap <leader>vfl :VtrSendFileAndLine<cr>

au FileType gitcommit set tw=72

let g:polyglot_disabled = ['css', 'sass', 'scss']

function! Multiple_cursors_before()
    exe 'NeoCompleteLock'
    echo 'Disabled autocomplete'
endfunction

function! Multiple_cursors_after()
    exe 'NeoCompleteUnlock'
    echo 'Enabled autocomplete'
endfunction

let g:vtr_filetype_runner_overrides = {
      \ 'ruby': 'RAILS_ENV=test rake db:migrate:redo > /dev/null 2>&1 && sr --fail-fast {file}',
      \ }

set colorcolumn=80

function! Wipeout()
  " list of *all* buffer numbers
  let l:buffers = range(1, bufnr('$'))

  " what tab page are we in?
  let l:currentTab = tabpagenr()
  try
    " go through all tab pages
    let l:tab = 0
    while l:tab < tabpagenr('$')
      let l:tab += 1

      " go through all windows
      let l:win = 0
      while l:win < winnr('$')
        let l:win += 1
        " whatever buffer is in this window in this tab, remove it from
        " l:buffers list
        let l:thisbuf = winbufnr(l:win)
        call remove(l:buffers, index(l:buffers, l:thisbuf))
      endwhile
    endwhile

    " if there are any buffers left, delete them
    if len(l:buffers)
      execute 'bwipeout' join(l:buffers)
    endif
  finally
    " go back to our original tab page
    execute 'tabnext' l:currentTab
  endtry
endfunction
