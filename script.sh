#!/bin/bash

# GitHub 사용자 이름과 토큰 설정
USERNAME="GIT_NICKNAME" # <- Gihub nickname
TOKEN="GIT_TOKEN" # <- Github Token

# 삭제할 리포지토리 목록
REPOS=(
	"jelly"
	"jelly"
	"jelly"
	"jelly"
	"jelly"
	"jelly"
	"jelly"
	"jelly"
	)

# 각 리포지토리에 대해 삭제 요청 실행
for REPO in "${REPOS[@]}"
do
  curl -X DELETE "https://api.github.com/repos/$USERNAME/$REPO" \
  -H "Authorization: token $TOKEN" \
  -H "Accept: application/vnd.github.v3+json"
done
