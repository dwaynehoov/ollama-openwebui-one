FROM ghcr.io/open-webui/open-webui:latest
EXPOSE 11434 8080
ENV OLLAMA_BASE_URL=http://127.0.0.1:11434
# RUN apt-get update && apt-get -y install xyz
RUN mkdir /both
COPY start-both.sh /both/start-both.sh
RUN chmod +x /both/start-both.sh
RUN curl -fsSL https://ollama.com/install.sh | sh
ENTRYPOINT [ "bash","/both/start-both.sh"]