nnoremap <silent> <S-F1> :call sniper#StoreBuffer(1)<CR>
nnoremap <silent> <S-F2> :call sniper#StoreBuffer(2)<CR>
nnoremap <silent> <S-F3> :call sniper#StoreBuffer(3)<CR>
nnoremap <silent> <S-F4> :call sniper#StoreBuffer(4)<CR>

nnoremap <silent> <F1> :call sniper#RecallBuffer(1)<CR>
nnoremap <silent> <F2> :call sniper#RecallBuffer(2)<CR>
nnoremap <silent> <F3> :call sniper#RecallBuffer(3)<CR>
nnoremap <silent> <F4> :call sniper#RecallBuffer(4)<CR>

nnoremap <silent> <F5> :call sniper#ListBuffers()<CR>

command! SniperList call sniper#ListBuffers()
