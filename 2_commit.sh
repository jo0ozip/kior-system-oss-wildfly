#!/bin/bash

read -p "커밋 메시지를 입력하시오: " commit_message

git commit -m "$commit_message"
