# ollama-openwebui-one
One container deployment of Ollama and Open WebUI

Sure, one shouldn't jam multiple things into the same container - but this is a simple deployment for quick evaluation.


https://github.com/open-webui/open-webui

https://github.com/ollama/ollama/

# Deployment
Clone the repository and build the container:

```docker build . -t ollama-nocc```


Run the container:

```docker run --network host ollama-nocc```
