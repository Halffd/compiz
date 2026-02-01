#!/bin/bash
# Install and restart compiz with modified staticswitcher

cd ~/repos/compiz

# Stop compiz gracefully
pkill -f compiz
sleep 1

# Install the plugin
sudo ninja -C build install

# Wait a moment
sleep 1

# Start compiz with your modifications
compiz --replace &

# Optional: Watch logs
# tail -f ~/.xsession-errors