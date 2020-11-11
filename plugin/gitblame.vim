lua require('gitblame').init()
highlight default link gitblame Comment

autocmd CursorMoved  * lua require('gitblame').show_blame_info()
autocmd CursorMovedI * lua require('gitblame').clear_virtual_text()
autocmd TextChanged  * lua require('gitblame').load_blames()
autocmd InsertLeave * lua require('gitblame').load_blames()
autocmd InsertLeave * lua require('gitblame').show_blame_info()
autocmd BufEnter * lua require('gitblame').check_file_in_git_repo()
