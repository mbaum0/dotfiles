#!/bin/bash

#bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
alias squash='git rebase -i HEAD~"$1"'
echo "done!"
