#!/bin/bash

sudo chmod +x ./install-packages.sh
./install-packages.sh

sudo chmod +x ./create-dirs.sh
./create-dirs.sh

sudo chmod +x ./load-dotfiles.sh
./load-dotfiles.sh

sudo chmod +x ./setup-appearance.sh
./setup-appearance.sh