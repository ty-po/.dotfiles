if [ -f "$HOME/.bashrc" ] ; then
  source $HOME/.bashrc
fi

if [ -d "$HOME/.bin" ] ; then
  export PATH=$PATH:"$HOME/.bin"
fi

. ~/.tty-solarized/tty-solarized-dark.sh
