# GitHub Issues Fetcher (Bash Script)

This script fetches and displays issues from a given GitHub repository using the GitHub API.

## Requirements

* bash
* curl
* GitHub username and personal access token

## Setup

1. Export your GitHub credentials:

```bash
export username="your_github_username"
export token="your_personal_access_token"
```

2. Give execute permission:

```bash
chmod +x script.sh
```

## Usage

```bash
./script.sh <repo_owner> <repo_name>
```

### Example:

```bash
./script.sh torvalds linux
```

## How It Works

* Builds GitHub API URL
* Authenticates using your credentials
* Calls `/repos/{owner}/{repo}/issues`
* Prints issues or shows a message if none exist

## Notes

* Ensure your token has `repo` access for private repositories
* Output is raw JSON (use `jq` for formatting if needed)
