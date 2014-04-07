set ignorecase
if g:os=='Windows'
  " Maximize the window on startup
  au GUIEnter * simalt ~x
  set fileformat=dos
  if filereadable(expand("~/_gvimrc.local"))
    source ~/_gvimrc.local
  endif
  
  " make home dir as current dir, if gvim is opened. in console vim this is not required
  if isdirectory(g:homeDir)
    execute ":cd ".g:homeDir
  endif  
  
elseif g:os=='Linux'
  set fileformat=unix
  if filereadable(expand("~/.gvimrc.local"))
    source ~/.gvimrc.local
  endif
  execute ":cd ".$HOME
  
elseif g:os=='osx'
  set macmeta "This allows the Alt/Option key to work in macvim
  set fileformat=unix
  if filereadable(expand("~/.gvimrc.local"))
    source ~/.gvimrc.local
  endif
  execute ":cd ".$HOME
endif

