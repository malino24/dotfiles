#!/bin/bash

sudo pacman -S code

extensions=(

)

for ext in "${extensions[@]}"; do
  code --install-extension "$ext"
done
