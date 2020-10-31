"Tweaks for wiki mode

set autochdir

command GrepTag execute 'silent grep! "^\#"<cword>' | copen | redraw!

"Add command to list all existing tags
function ListWikiTags()
   set splitright
   vnew
   vertical resize 40
   setlocal buftype=nowrite
   setlocal bufhidden=delete
   setlocal noswapfile
   setlocal nobuflisted
   execute '0r!rg --no-filename -o -N "^\#\\w+" | sort | uniq'
   normal Gddgg
   nnoremap <buffer> <CR> :GrepTag<CR>
endfunction
nnoremap <C-T> :call ListWikiTags()<CR>

"Jump to internal link using CTRL-]
nnoremap <C-]> t]vi]"zy:e <C-R>z.md<CR>

