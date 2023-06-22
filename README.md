Installation (linux):
1.  Uses ripgrep: can be disabled by commenting out
       vim.keymap.set('n', '<leader>fs', function()
           builtin.grep_string({ search = vim.fn.input("Grep > ") });
       end)
    in the remap.lua file
2.  Uses packer: git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
3.  Clone the repository and put the files and folders inside ~/.config/nvim/
4.  nvim ~/.config/nvim/lua/enrique/set.lua 
5.  Type :so and hit enter key.
6.  Exit nvim
7.  nvim ~/.config/nvim/lua/enrique/packer.lua and wait for the plugins to install.
    press q and then close nvim.
8.  Now you are all set!

Copyright 2023 github.com/Enrique-ZA

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
associated documentation files (the “Software”), to deal in the Software without restriction, 
including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do 
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial 
portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS 
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS 
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS 
OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN 
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
