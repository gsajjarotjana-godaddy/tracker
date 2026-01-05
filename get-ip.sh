#!/bin/bash
# Get your Mac's IP address for accessing the tracker on your phone

echo "Finding your Mac's IP address..."
echo ""

# Try to get the IP address
IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | head -1)

if [ -z "$IP" ]; then
    echo "Could not automatically find IP address."
    echo ""
    echo "Please find it manually:"
    echo "1. Open System Settings"
    echo "2. Go to Network"
    echo "3. Click on your WiFi connection"
    echo "4. Look for the IP address (usually starts with 192.168.x.x)"
else
    echo "Your Mac's IP address is: $IP"
    echo ""
    echo "On your iPhone (same WiFi network):"
    echo "1. Open Safari"
    echo "2. Type this in the address bar:"
    echo "   http://$IP:8000"
    echo "3. Press Go"
    echo ""
    echo "Make sure the web server is running first!"
    echo "(Double-click start-server.sh)"
fi


