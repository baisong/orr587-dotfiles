# basic system commands
alias ll='ls -alF'
ff () { echo "grep -lir \"$1\" *"; grep -lir "$1" *; }
alias countlines='find . -type f -print0 | xargs -0 cat | wc -l'

# server & debugging commands
alias ss='sudo /etc/init.d/apache2 restart'
alias dd='tail -f /var/log/apache2/error.log'
alias dp='tail -f /Applications/MAMP/logs/php_error.log'
 
# repo commands
REPO='/Users/orr587/github/openscholar/openscholar'
DOCROOT='/Applications/MAMP/htdocs/docroot'
PROFILE="$DOCROOT/profiles/openscholar"
MODULES="$PROFILE/modules"
THEMES="$PROFILE/themes"
alias gb='git checkout -b'
alias gp='git pull'
alias gs='git status'
alias gm='clear && cd $MODULES && pwd && ll && git branch && gs'
alias gt='clear && cd $THEMES && pwd && ll && git branch && gs'
alias gd='clear && cd $DOCROOT && pwd && ll'
alias gp='clear && cd $PROFILE && pwd && ll && git branch && gs'
alias gr='clear && cd $REPO && pwd && ll && git branch && gs'

## checks out & pulls branches by version
alias cp1='git checkout SCHOLAR-3.1 && git pull'
alias cp2='git checkout SCHOLAR-3.2 && git pull'
alias cp3='git checkout SCHOLAR-3.3 && git pull'

## checks out & pulls branches by type
### stable branch
alias cps='git checkout SCHOLAR-3.3 && git pull'
### dev branch
alias cpd='git checkout SCHOLAR-3.x && git pull'
## pushes a topic branch to master
pcd () {
  CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`;
  echo "git push -u origin $CURRENT_BRANCH";
  git push -u origin $CURRENT_BRANCH;
}
# drush commands
alias cc='drush cc all'
alias wd='drush wd-show'
alias fry='drush fr -y'
alias fuy='drush fu -y'
alias eny='drush en -y'
alias disy='drush dis -y'
alias sqlc='/Applications/MAMP/Library/bin/mysql --host=localhost -uroot -proot os'

# drupal misc
alias coderf='php /Applications/MAMP/htdocs/docroot/sites/all/modules/contrib/coder/scripts/coder_format/coder_format.php'
