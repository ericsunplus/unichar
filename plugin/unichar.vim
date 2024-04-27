" Title:        UniChar
" Description:  A plugin to input some special unicode charactors
" Maintainer:   Eric Sun

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_unichar")
    finish
endif
let g:loaded_unichar = 1

" <leader>ucn for unicode circle number 1 ~ 20
nnoremap <silent> <Leader>ucn :call unichar#InputEnclosedNumberPrompt()<CR>
