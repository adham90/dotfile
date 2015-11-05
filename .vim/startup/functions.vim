fun! Format_WhiteSpace_RemoveTrailing()
  :%s/\v\s*$//g
endfun

fun! Format_Inflection_ToCamelCase()
  :s/\v([a-z])_([a-z])/\1\u\2/g
endfun

fun! Format_Inflection_ToUnderscored()
  :s/\v([a-z])([A-Z])/\L\1_\2/g
endfun

fun! CheckTabs()
  if search("\t") != 0
    echohl ErrorMsg | ec "                                 !WARNING!                              "
          \ |              ec "There are tabs in the file, do you want to convert them to spaces? [Y/n]" | echohl None
    let choice = nr2char(getchar())
    if choice == 'y' || choice == "\<CR>"
      retab 2
    endif
  else
    return
  endif
endfun

function! EnsureDirExists ()
  let required_dir = expand("%:h")
  if !isdirectory(required_dir)
    call mkdir(required_dir, 'p')
  endif
endfunction

function! GetCWD()
  return expand(":pwd")
endfunction

function! IsHelp()
  return &buftype=='help'?' (help) ':''
endfunction

function! GetName()
  return expand("%:t")==''?'<none>':expand("%:t")
endfunction


