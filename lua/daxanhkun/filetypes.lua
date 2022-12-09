local cmd = vim.cmd

cmd([[
  augroup indent
    autocmd Filetype html setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
    autocmd Filetype htmldjango setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
    autocmd Filetype make setlocal tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
    autocmd Filetype javascript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
    autocmd Filetype typescript setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
    autocmd Filetype css setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
    autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 softtabstop=0 expandtab
    autocmd Filetype go setlocal tabstop=4 softtabstop=0 noexpandtab
    autocmd Filetype python setlocal tabstop=4 shiftwidth=4 softtabstop=4
    autocmd Filetype c setlocal tabstop=4 shiftwidth=4 softtabstop=0 expandtab
    autocmd Filetype ruby setlocal expandtab shiftwidth=2 tabstop=2
    autocmd Filetype eruby setlocal expandtab shiftwidth=2 tabstop=2
    autocmd Filetype json setlocal expandtab shiftwidth=2 tabstop=2
  augroup end
]])
