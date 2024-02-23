* Installation (Linux):
```
1.  Install ripgrep
2.  Uses Prettier: npm i -g prettier
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
7.  Type :PackerSync and hit enter key.
8.  Exit nvim
9.  nvim ~/.config/nvim/lua/enrique/remap.lua 
10. Type :so and hit enter key.
11. Exit nvim
12. nvim ~/.config/nvim/lua/enrique/set.lua 
13. Type :so and hit enter key.
14. Exit nvim
15. Now you are all set!
```

* REMAPS:
```
Leader - Space
Explorer - Leader+dd
Save - Control+s
Save and Quit - Control+x
Redo - Control+y
Undo - Control+z
Left, Up, Down, Right - j, k, l, ; (for qwerty defualt hand position)
Select all - Control+a
Copy to clipboard - Control+d
Insert empty line below - Alt+l
Move selected line up - Shift+k
Move selected line down - Shift+l
Record macro start - Control+b
Record macro end - q
Perform macro - Control+f
Go to definition - gd
Variable description - Shift+k
Previous file - Shift+pShift+p 
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
