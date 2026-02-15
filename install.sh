#!/usr/bin/env bash

set -e

INSTALL_DIR="/usr/local/bin"
SCRIPT_NAME="scaffold"

if [ ! -f "$SCRIPT_NAME" ]; then
  echo "Error: $SCRIPT_NAME not found in current directory." >&2
  echo "Run this script from the project root." >&2
  exit 1
fi

chmod +x "$SCRIPT_NAME"

echo "Installing $SCRIPT_NAME to $INSTALL_DIR"

if [ -w "$INSTALL_DIR" ]; then
  cp "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"
else
  echo "Permission required. Using sudo.."
  sudo cp "$SCRIPT_NAME" "$INSTALL_DIR/$SCRIPT_NAME"
fi

if [ -x "$INSTALL_DIR/$SCRIPT_NAME" ]; then
  echo "✔ $SCRIPT_NAME installed successfully."
  echo "If the command is not found, restart your terminal."
else
  echo "Installation failed."
  exit 1
fi
