augroup filetypedetect
  au BufNewFile,BufRead *.swig setfiletype swig
  au BufNewFile,BufRead *.html setfiletype jinja
  au BufNewFile,BufRead *.json setfiletype json
augroup END
