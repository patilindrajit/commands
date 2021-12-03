#!/bin/bash
#
# Dummy script to demonstrate the zenity progress widget!

(
  echo 25
  echo "# Setting up..."
  sleep 2

  echo 30
  echo "# Reading files..."
  sleep 2

  echo 70
  echo "# Creating content..."
  sleep 1

  echo 100
  echo "# Done!"
) | zenity --title "Progress bar example" --progress --auto-kill
