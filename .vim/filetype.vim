if exists("did_lod_filetypes")
    finish
endif
augroup filetyedetect
    au BufRead,BufNewFile *.lnc setfiletype lnc
augroup END
