#!/bin/bash
git branch -r # show information on which branches your local tracking branches push to
git remote add origin git@github.com:vwares/l-tools.git # opposite = git remote rm origin
git branch -M main