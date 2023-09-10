#!/bin/bash

brightnessctl_output=$(brightnessctl)

# Extract the percentage part using awk
percentage=$(echo "$brightnessctl_output" | awk -F'[()]' '{print $2}')

printf "󱏟 %s" "$percentage"
