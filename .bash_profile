if [ -f ~/.bashrc ]; 
then
   source ~/.bashrc
fi

if [ -f ~/.bash_aliases ]; 
then
   source ~/.bash_aliases
fi

export DRUSH_PHP=/Applications/MAMP/bin/php5.3/bin/php
export PATH=/Users/orr587/pear/bin/pear:$PATH
export PATH=$PATH:/Applications/MAMP/Library/bin
