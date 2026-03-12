#!/bin/bash
# Zählt pacman und yay updates
updates=$(checkupdates 2>/dev/null | wc -l)
if [ "$updates" -gt 0 ]; then
  echo "{\"text\": \"$updates\", \"class\": \"pending\"}"
else
  echo "{\"text\": \"0\", \"class\": \"updated\"}"
fi
