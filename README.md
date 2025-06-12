# Ollama and Open WebUI in Codesphere

This template sets up a [Codesphere](https://codesphere.com) workspace to run both [Ollama](https://ollama.ai/) and [Open WebUI](https://openwebui.com/) seamlessly. Ollama allows you to run large language models locally, and Open WebUI provides a user-friendly interface to interact with them.

## Getting Started

1. **Create a new workspace on [Codesphere](codesphere.com/ide) with this URL:**  
    ```bash
    https://github.com/codesphere-cloud/template-Ollama-Open-WebUI.git
    ```
    1. Use a `Boost` or `Pro` plan to have enough storage for the llms.  

2.  **Run the `Prepare` stage**  
    1. Wait till the `Prepare` stage is complete
* It will copy the .env.example file to a .env file 
* It will download Open-WebUI and Ollama.  

4.  **Run the `Run` stage**  
* It will start both the Ollama server and the Open WebUI.
* It will download phi4-mini. 
    * You can change this to llms of your choice in the `process-compose.models.yml` file.
    * See the list of availbable llms [here](https://ollama.com/search).

## Accessing Open WebUI

After the `Run` stage is running for a few seconds, it will look something like this:
![image](./.workspace-internal/open-webui.png)  
  
Note: When you run it for the first time, it will take a bit longer.  
You can access the Open WebUI in your Codesphere workspace through the 'Open deployment' button.

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
