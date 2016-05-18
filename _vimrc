execute pathogen#infect()
syntax on
filetype plugin indent on

" Set relative line numbers
set number
set relativenumber

" Set tabbing
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix . "noremap " . key . " <Nop>"
    endfor
endfor
