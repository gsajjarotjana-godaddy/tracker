#!/bin/bash
# Script to push to GitHub

cd "/Users/grace/Desktop/development/habit tracker"

echo "🚀 Pushing to GitHub..."
echo ""
echo "You'll be prompted for:"
echo "  Username: gsajjarotjana-godaddy"
echo "  Password: (paste your Personal Access Token)"
echo ""

git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo ""
    echo "Next: Enable GitHub Pages"
    echo "1. Go to: https://github.com/gsajjarotjana-godaddy/tracker/settings/pages"
    echo "2. Under 'Source', select 'Deploy from a branch'"
    echo "3. Branch: main, Folder: / (root)"
    echo "4. Click Save"
    echo ""
    echo "Your app will be at:"
    echo "https://gsajjarotjana-godaddy.github.io/tracker/"
else
    echo ""
    echo "❌ Push failed. Make sure you:"
    echo "  1. Created a Personal Access Token"
    echo "  2. Used the token as the password (not your GitHub password)"
fi

