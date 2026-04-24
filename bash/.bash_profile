#!/bin/env bash

# echo "This is .bash_profile"

[[ -f "$HOME/.profile" ]] && source "$HOME/.profile" || echo "<error> .profile not found"