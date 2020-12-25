#!/bin/bash

# install required tools
sudo yum install meld

# config
# ===================
	# difftool
	git config --local diff.tool meld

# aliases
#	git unadd
#	git g		for graphs
# ===================
	git config alias.l '!ls'
	git config alias.g "log --all --decorate --oneline --graph"
	git config --global alias.unadd 'reset HEAD --'
