#!/bin/sh
# docker volume create gpt4all_data
docker build --progress plain -t llm-tool .
# docker build --no-cache -t llm-tool .
