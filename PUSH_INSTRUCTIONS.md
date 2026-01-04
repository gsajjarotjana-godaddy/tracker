# Push to GitHub - Authentication Required

GitHub needs authentication to push. Here are two options:

## Option 1: Use Personal Access Token (Easiest)

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Name it: "Habit Tracker"
4. Select scope: **repo** (check the box)
5. Click "Generate token"
6. **Copy the token immediately** (you won't see it again!)

Then run this command (replace YOUR_TOKEN with the token you copied):
```bash
cd "/Users/grace/Desktop/development/habit tracker"
git push -u origin main
```
When prompted:
- Username: `gsajjarotjana-godaddy`
- Password: **paste your token** (not your GitHub password)

## Option 2: Use GitHub CLI (Alternative)

Install GitHub CLI and authenticate:
```bash
brew install gh
gh auth login
```

Then push:
```bash
git push -u origin main
```

## Option 3: Use SSH (If you have SSH keys)

If you have SSH keys set up, we can switch to SSH URL instead.

