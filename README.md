# Buffer Bookmark Manager

Quickly store and recall buffers with F1-F4 keys.

Insipired by [ThePrimeagen/harpoon](https://github.com/ThePrimeagen/harpoon).

## Installation

Using vim-plug:

```vim
Plug 'mitjafelicijan/sniper.vim'
```

## Usage

- `Shift-F1` to store current buffer in slot 1
- `Shift-F2` to store current buffer in slot 2
- `Shift-F3` to store current buffer in slot 3
- `Shift-F4` to store current buffer in slot 4
- `F1` to recall buffer from slot 1
- `F2` to recall buffer from slot 2
- `F3` to recall buffer from slot 3
- `F4` to recall buffer from slot 4
- `F5` or `:SniperList` to view all stored buffers

## Default keybinds

```vim
nnoremap <silent> <S-F1> :call sniper#StoreBuffer(1)<CR>
nnoremap <silent> <S-F2> :call sniper#StoreBuffer(2)<CR>
nnoremap <silent> <S-F3> :call sniper#StoreBuffer(3)<CR>
nnoremap <silent> <S-F4> :call sniper#StoreBuffer(4)<CR>

nnoremap <silent> <F1> :call sniper#RecallBuffer(1)<CR>
nnoremap <silent> <F2> :call sniper#RecallBuffer(2)<CR>
nnoremap <silent> <F3> :call sniper#RecallBuffer(3)<CR>
nnoremap <silent> <F4> :call sniper#RecallBuffer(4)<CR>

nnoremap <silent> <F5> :call sniper#ListBuffers()<CR>
```
