# Use an official Python runtime as a parent image
FROM python:3.11-slim

RUN pip install llm

RUN llm install llm-gpt4all && \
  llm install llm-cluster && \
  llm install llm-sentence-transformers && \
  llm sentence-transformers register all-MiniLM-L6-v2 --alias minilm && \
  llm sentence-transformers register all-mpnet-base-v2 --alias mpnet
