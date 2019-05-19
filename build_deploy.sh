#!/bin/bash

PREFIX=/usr/local/bin

for SCRIPT in 'uncat' 'cpt'
do
    if [[ -f $SCRIPT ]]
    then
        DEPLOY=deploy_${SCRIPT}.sh
        TARGET=$PREFIX/$SCRIPT
        {
            echo 'cat > '$PREFIX/$SCRIPT' << "EOF"'
            cat $SCRIPT
            echo 'EOF'
            echo
            echo "chmod +x $TARGET"
        } > $DEPLOY
        chmod +x $DEPLOY
    fi
done
