# vimfiles

On a clean machine:

```
git clone git@github.com:cldellow/vimfiles.git
ln -s vimfiles .vim
```

Tweak `~/.bashrc`:

```
export EDITOR=vim
export TERM=xterm-256color
alias mktags='ctags $(ag . -i --nocolor --nogroup --hidden -g ".scala$|.clj$|.java$|.py$")'
```

