# Ollama and Open WebUI in Codesphere

This template sets up a [Codesphere](https://codesphere.com) workspace to run both [Ollama](https://ollama.ai/) and [Open WebUI](https://openwebui.com/) seamlessly. Ollama allows you to run large language models locally, and Open WebUI provides a user-friendly interface to interact with them.

## Getting Started

1.  **Environment Variables:**
    * Copy the `.env.example` file to `.env`.
    * **Crucially**, edit the `.env` file and set any necessary environment variables for Ollama and Open WebUI. Refer to the documentation of each project for available options.
    * Set the environment variables in your workspace.

2.  **Prepare Stage:**
    * Run the `Prepare` stage of your Codesphere workspace.
    *   This stage will download Open-WebUI and Ollama.
    *   And it will download llama3.2 and deepseek-r1 which you can change to llms of your choice. See the list of availbable llms [here](https://ollama.com/search)

3.  **Run Stage:**
    * Once the `Prepare` stage is complete, run the `Run` stage. This will start both the Ollama server and the Open WebUI.

## Accessing Open WebUI

After the `Run` stage is running for a few seconds, you should be able to access the Open WebUI in your Codesphere workspace through the 'Open deployment' button.

## Licensing

This template repository and its original code are licensed under the MIT License. See the main [LICENSE](LICENSE) file for details.

This project incorporates the following third-party open-source software, each under its respective license:

* **Open WebUI:** Used under the terms of its [specific Open WebUI License](THIRD_PARTY_LICENSES/OpenWebUi/LICENSE).
    * Please note the branding restrictions outlined in this license (Clauses 4, 5, and 6) which require retaining "Open WebUI" branding in most deployments and distributions.
* **Ollama:** Used under the [MIT License](THIRD_PARTY_LICENSES/Ollama/LICENSE).

By using this template, you agree to comply with all applicable licenses, including those of the third-party components.

## Further Information

* **Ollama Documentation:** [https://github.com/ollama/ollama/blob/main/docs/README.md](https://github.com/ollama/ollama/blob/main/docs/README.md)
* **Open WebUI Documentation:** [https://docs.openwebui.com/](https://docs.openwebui.com/)

Enjoy running your local LLMs with Ollama and Open WebUI in Codesphere!
