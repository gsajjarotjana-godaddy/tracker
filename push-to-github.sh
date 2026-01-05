#!/bin/bash
# Helper script to push to GitHub

echo "🚀 Pushing Habit Tracker to GitHub..."
echo ""

# Check if remote is already set
if git remote get-url origin &>/dev/null; then
    echo "Remote already configured. Pushing..."
    git push -u origin main
else
    echo "Please provide your GitHub repository URL"
    echo "Example: https://github.com/username/habit-tracker.git"
    echo ""
    read -p "Enter your GitHub repo URL: " repo_url
    
    if [ -z "$repo_url" ]; then
        echo "❌ No URL provided. Exiting."
        exit 1
    fi
    
    echo ""
    echo "Setting up remote..."
    git remote add origin "$repo_url"
    
    echo "Pushing to GitHub..."
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ Successfully pushed to GitHub!"
        echo ""
        echo "Next steps:"
        echo "1. Go to your repository on GitHub"
        echo "2. Click Settings → Pages"
        echo "3. Select 'Deploy from a branch'"
        echo "4. Choose branch: main, folder: / (root)"
        echo "5. Save and wait 1-2 minutes"
        echo ""
        echo "Your app will be at: https://$(echo $repo_url | sed 's|https://github.com/||' | sed 's|\.git||').github.io/"
    else
        echo "❌ Error pushing. You may need to authenticate."
        echo "Try running: git push -u origin main"
    fi
fi


