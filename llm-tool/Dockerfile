# Use an official Python runtime as a parent image
FROM python:3.11-slim

COPY --from=llm-tool:base /usr/local/lib/python3.11/site-packages /usr/local/lib/python3.11/site-packages
COPY --from=llm-tool:base /usr/local/bin /usr/local/bin
#COPY --from=llm-tool:base /root/.cache /root/.cache

# Set the cache directory for gpt4all
ENV GPT4ALL_CACHE_DIR=/root/.cache/gpt4all

# RUN chmod -R 777 $GPT4ALL_CACHE_DIR/

# Set the working directory in the container to /app
WORKDIR /app

ENTRYPOINT ["llm"]

#RUN llm -m gpt4all-falcon-q4_0 '1+1=?' && \
#  llm -m orca-mini-3b-gguf2-q4_0 '1+1=?' && \
#  llm -m mistral-7b-instruct-v0 '1+1=?' && \
#  echo 'Models downloaded.'
