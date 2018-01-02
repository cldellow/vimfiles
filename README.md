# vimfiles

On a clean machine:

```
git clone git@github.com:cldellow/vimfiles.git
ln -s vimfiles .vim
ln -s vimfiles/.vimrc .vimrc
cp vimfiles/.ctags ~~/.ctags
```

Tweak `~/.bashrc`:

```
export EDITOR=vim
export TERM=xterm-256color
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
alias mktags='ctags $(ag . -i --nocolor --nogroup --hidden -g ".scala$|.clj$|.java$|.py$|.cljs$")'
```

Tweak `~/.lein/profiles.clj`:

```
{:user {
 :dependencies [[cljfmt "0.5.7"]]}}
```
