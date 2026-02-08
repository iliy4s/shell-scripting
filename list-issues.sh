#!/bin/bash
################################################
# author : iliyas
# date : 8-2-26
# content : bash script to list issues in a repo 
################################################
api_url="https://api.github.com"
username=$username
token=$token 

repo_owner=$1
repo_name=$2
function github-api-get {
  loacl endpoint="$1"
  url= ${api_utl/${endpoint}

  curl -r -u ${username$
}
function get-issues {
  local endpoint = "repos/${repo_owner}/${repo_name}/issues"
  issues= "$(github-api-get "$endpoint")"
}
echo "listing issues in $2"
get-issues
