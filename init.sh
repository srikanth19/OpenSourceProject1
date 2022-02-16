#!/bin/bash

############################################
# steps:
# - Install virtual box
############################################
###########################################
# exit codes:
# 0 - ok
# 127 - wrong number of arguments
# 111 - Virtual box install failed
##########################################

##########################################
# variables
INIT_VERSION='1.0.0'
##########################################

##########################################
# help function
##########################################
help()
{
    echo ""
    echo "init.sh $INIT_VERSION"
    echo ""
    echo "This script installs virtualbox"
    echo ""
#    echo "syntax"
}

##########################################
# display message and return code
##########################################
message_exit_with_code()
{
    echo "$1"
    echo $2
}

########################################
# install virtual box
########################################
install()
{
    sudo apt -y install $1
    if [ "$?" -ne 0 ]; then
            message_exit_with_code "Error while installing $1" 111
    fi

}

#########################################
# main script
#########################################

if [ "$#" -ne 0 ]; then
        help
fi

# install virtual box
install "virtualbox"
    if [ "$?" -eq 0 ]; then
            echo ""
            message_exit_with_code "Virtualbox installed successfully"
            echo ""
    fi
