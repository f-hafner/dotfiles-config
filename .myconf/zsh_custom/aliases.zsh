
alias workon=workon_venv

alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'

PRJS="$HOME/repositories/projects/"
alias prj_reditsap='cdactivate $PRJS/amuse/amuse conda Amuse-env'
alias prj_l2v='cdactivate $PRJS/odissei-life2vec/life-sequencing-dutch venv'
alias prj_annular='cdactivate $PRJS/DEMOSES/annular venv'
alias prj_dms_scl='cdactivate $PRJS/DEMOSES/demoses-scaling-benchmarks venv'
alias prj_pplr='cdactivate $PRJS/popylar/prfmodel/ venv'

alias kitty_dark="kitty --detach"
alias kitty_light="kitty --config $HOME/.myconf/kitty/kitty_light.conf --detach"
