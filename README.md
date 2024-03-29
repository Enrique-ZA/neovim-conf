* Runs Neovim ```v0.9.1```
* Updated ```23 February 2024```
* Installation (Linux):
```
1.  Install ripgrep
2.  Install Prettier: npm i -g prettier
3.  Install packer:
```
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
~/.local/share/nvim/site/pack/packer/start/packer.nvim
cd ~/.local/share/nvim/site/pack/packer/start/packer.nvim
git checkout 1d0cf98a561f7fd654c970c49f917d74fafe1530
```
```
4.  Clone the repository and put the files and folders inside ~/.config/nvim/
5.  nvim ~/.config/nvim/lua/enrique/packer.lua 
6.  Type :so and hit enter key.
7.  Type :PackerSync and hit enter key. Wait for the plugins to be installed.
8.  Exit nvim
9.  nvim ~/.config/nvim/lua/enrique/remap.lua 
10. Type :so and hit enter key.
11. Exit nvim
12. nvim ~/.config/nvim/lua/enrique/set.lua 
13. Type :so and hit enter key.
14. Exit nvim
15. Do a final :so and :PackerSync in ~/.config/nvim/lua/enrique/packer.lua
15. Now you are all set!
```

* REMAPS:
```
Leader - Space
Explorer - <leader>dd
Save - <C-s>
Save and Quit - <C-x>
Redo - <C-y>
Undo - <C-z>
Home - <A-a>
End - <A-f>
Left, Up, Down, Right - j, k, l, ; (qwerty default hand position)
Select all - <C-a>
Copy to clipboard - <C-d>
Insert empty line below - <A-l>
Move selected line up - K
Move selected line down - L
Record macro start - <C-b>
Record macro end - q
Perform macro - <C-f>
Go to definition - gd
Variable description - <leader>J
Previous file - <A-e>
Comment/Uncomment - gc
Telescope - <leader>ff
Harpoon Window Toggle - <A-y>
Harpoon Add - <leader>hh
```

* MIT LICENSE:

```
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
```
