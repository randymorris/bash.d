#!/bin/bash

rm -f ~/.{profile,bash{rc,_profile}} 2> /dev/null
ln -s ~/.bash.d/bash_profile ~/.bashrc
ln -s ~/.bash.d/bash_profile ~/.bash_profile
