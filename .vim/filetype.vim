augroup filetypedetect
  au BufNewFile,BufRead *.swig setfiletype swig
  au BufNewFile,BufRead *.html setfiletype jinja
  au BufNewFile,BufRead *.json setfiletype json
  au BufNewFile,BufRead *.ts setfiletype typescript
  au BufNewFile,BufRead *.js setfiletype javascriptreact
  au BufNewFile,BufRead *.tsx setfiletype javascriptreact
augroup END
