# vimfiles

On a clean machine:

```
git clone git@github.com:cldellow/vimfiles.git
ln -s vimfiles .vim
curl https://gist.githubusercontent.com/pangloss/02bc52b5da7f05ad66e7/raw/e50dbc0133a86178e13f6853fa0918fae8681ca0/.ctags > ~/.ctags
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
