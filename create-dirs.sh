#!/bin/bash

mkdir ~/My_Files
if [ $? -eq 0 ]; then
    echo "Created ~/My_Files/"
else
    echo "Error in creating ~/My_Files/"
fi

mkdir ~/scripts
if [ $? -eq 0 ]; then
    echo "Created ~/scripts/"
else
    echo "Error in creating ~/scripts/"
fi