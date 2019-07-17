# .dotfiles
My entire dev environment, since I've been setting up my dev environment on various machines lately.

## Installation

The packages required by this repository can be installed with the Brew command below. If you are not using Mac OSX, you will need to install each of these using your package manager.
```
brew install git bash-completion ag fzf
```

Key bindings for *fzf*:
```
$(brew --prefix)/opt/fzf/install
```

You will probably have trouble cloning this into your home directory as it will not be empty. Execute this command in one fell swoop to install it in a non-intrusive way:
```
git init && \
git remote add origin https://github.com/julianjuko/.dotfiles && \
git fetch && \
git reset origin/master && \ 
git checkout -t origin/master && \
git submodule update --init --recursive
```

This repo has a .vim/bundle folder which contains vim plugins which are included in this repository as submodules and run automatically by `pathogen.vim`.
