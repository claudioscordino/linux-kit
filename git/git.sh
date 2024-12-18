#!/bin/sh

git config --global core.editor "vim"
git config --global user.name "Claudio Scordino"
git config --global color.status.branch yellow
git config --global merge.tool meld
git config --global color.diff auto
git config --global color.ui auto
git config --global alias.co checkout
git config --global alias.pick cherry-pick
#git config --global alias.slog 'log --pretty=short'
git config --global alias.slog 'log --pretty=format:"%h %as %<(20)%an%x09 %s"'
git config --global push.default simple


# SINGLE PATCH (first submission):
#	git format-patch -s -M -1 -o send
# SINGLE PATCH (N-th submission):
#	git format-patch -v N -s -M -1 -o send
# MULTIPLE PATCHES (first submission):
#	git format-patch -n -s -M --cover-letter --thread -NUMBER_OF_COMMITS -o send
# MULTIPLE PATCHES (N-th submission):
#	git format-patch -v N -n -s -M --cover-letter --thread -NUMBER_OF_COMMITS -o send
