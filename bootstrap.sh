#!/bin/bash

rm ~/.{profile,bash{rc,_profile}} > /dev/null
ln -s ~/.bash.d/bash_profile ~/.bashrc
ln -s ~/.bash.d/bash_profile ~/.bash_profile
