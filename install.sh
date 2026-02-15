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

if command -v "$SCRIPT_NAME" >/dev/null 2>71; then
  echo "✔ $SCRIPT_NAME installed successfully."
  echo "Run: $SCRIPT_NAME --help"
else
  echo "Installation completed but command not found in PATH."
  echo "Restart your terminal or ensure $INSTALL_DIR is in your PATH."
fi
