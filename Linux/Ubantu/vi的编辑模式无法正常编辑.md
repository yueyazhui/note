在Ubuntu中，进入vi命令的编辑模式，发现按方向键不能移动光标，而是会输出ABCD，以及退格键也不能正常删除字符。这是由于Ubuntu预装的是vim-tiny，而我们需要使用vim-full。执行下面的语句安装vim full版本。
这个问题主要是新系统预装了vi，而没有装vim。因为vi是不能直接按退格键删除字符的，所以当你使用退格键删除字符，只有在按下esc时，那些字符才会消失。但vim可以直接像记事本一样编辑字符！

执行命令 sudo apt-get remove vim-common

执行命令 sudo apt-get install vim
