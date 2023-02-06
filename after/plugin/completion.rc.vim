set completeopt=menuone,noinsert,noselect,preview

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

let g:completion_comfirm_key = ""
imap <expr> <CR> pumvisible() ? complete_info()["selected"] != "-1" ?
                \ "<Plug>(completion_confirm_completion)" : "\<C-e>\<CR>" : "\<CR>"

