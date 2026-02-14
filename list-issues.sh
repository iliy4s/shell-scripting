#!/bin/bash
################################################
# author : iliyas
# date : 8-2-26
# content : bash script to list issues in repo 
################################################
api_url="https://api.github.com"
username=${username}
token=${token} 

repo_owner=$1
repo_name=$2
function github_api_get {
  local endpoint="$1"
  local url=${api_url}/${endpoint}

  curl -s -u "${username}:${token}" "$url"
}
function get_issues {
  local endpoint="repos/${repo_owner}/${repo_name}/issues"
  issues="$(github_api_get "$endpoint")"
  
  if [[ -z "$issues" ]]; then
    echo "no issues in ${repo_name}."
  else 
    echo "issues in ${repo_name} are:"
    echo "${issues}"
  fi
}
#main script
echo "listing issues in ${repo_owner}/${repo_name}"
get_issues
