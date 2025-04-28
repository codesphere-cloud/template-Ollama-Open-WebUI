# Ollama and Open WebUI in Codesphere

This template sets up a Codesphere workspace to run both [Ollama](https://ollama.ai/) and [Open WebUI](https://github.com/open-webui/open-webui) seamlessly. Ollama allows you to run large language models locally, and Open WebUI provides a user-friendly interface to interact with them.

## Getting Started

1.  **Environment Variables:**
    * Copy the `.env.example` file to `.env`.
    * **Crucially**, edit the `.env` file and set any necessary environment variables for Ollama and Open WebUI. Refer to the documentation of each project for available options.
    * Set the environment variables in your workspace.

2.  **Prepare Stage:**
    * Run the `prepare` stage of your Codesphere workspace.
    *   This stage will download Open-WebUI and Ollama.
    *   And it will download llama3.2 and deepseek-r1 which you can change to llms of your choice. See the list of availbable llms [here](https://ollama.com/search)

3.  **Run Stage:**
    * Once the `prepare` stage is complete, run the `run` stage. This will start both the Ollama server and the Open WebUI.

## Accessing Open WebUI

After the `run` stage is running for a few seconds, you should be able to access the Open WebUI in your Codesphere workspace through the 'Open deployment' button.

## Further Information

* **Ollama Documentation:** [https://ollama.ai/docs](https://ollama.ai/docs)
* **Open WebUI Documentation:** [https://github.com/ollama/ollama/blob/main/docs/README.md](https://github.com/ollama/ollama/blob/main/docs/README.md)

Enjoy running your local LLMs with Ollama and Open WebUI in Codesphere!