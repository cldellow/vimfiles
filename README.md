# vimfiles

On a clean machine:

```
git clone git@github.com:cldellow/vimfiles.git
ln -s vimfiles .vim
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

Tweak `~/.bashrc`:

```
export EDITOR=vim
export TERM=xterm-256color
```

