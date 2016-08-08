Dotfiles
========

*My configuration files using [dotfiles][0] tool*

  * `vimrc:` `vim` setup with `{nerdtree, python-mode, vim-gitgutter}` and `powerline`
  * `bashrc`: `bash` setup with `powerline` and `virtualenvwrapper`
  * `gitconfig:` config for git

###Setup vim
```
$ mkdir -p ~/.vim/{bundle,colors}
$ cd ~/.vim/bundle
$ git clone https://github.com/gmarik/Vundle.vim.git vundle
$ mkdir -p ~/src && cd ~/src
$ git clone https://github.com/tomasr/molokai.git
$ cd ~/.vim/colors
$ ln -s ~/src/molokai/colors/molokai.vim .
```

[0]: https://github.com/jbernard/dotfiles "dotfiles"
