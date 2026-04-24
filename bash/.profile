#!/bin/env bash

# echo "This is .profile"

[[ -f "$HOME/.config/bash/env.sh" ]] && source "$HOME/.config/bash/env.sh" || echo "<error> env.sh not found"