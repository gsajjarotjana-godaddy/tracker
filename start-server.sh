#!/bin/bash
# Simple web server to access the tracker on your phone
# Make sure your Mac and iPhone are on the same WiFi network

cd "$(dirname "$0")"
echo "Starting web server..."
echo ""
echo "To access on your iPhone:"
echo "1. Make sure your iPhone is on the same WiFi network"
echo "2. Find your Mac's IP address (run: ifconfig | grep 'inet ')"
echo "3. Open Safari on your iPhone"
echo "4. Go to: http://[YOUR-MAC-IP]:8000"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""
python3 -m http.server 8000

