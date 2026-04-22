#!/bin/bash
find "${XDG_CONFIG_HOME:-$HOME/.config}/fastfetch/animal/" -name "*.jpg" | sort -R | head -1
