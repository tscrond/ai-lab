# On-Prem AI Lab Automation Tools

This is a repo for storing useful scripts/automation/configs in the topic of my on-prem AI Lab.

## Lab Features

Currently installed software:

- [x] Ollama with couple of models running
- [x] Open WebUI for chatting
- [x] Stable diffusion software integrated with Open WebUI

## What’s Inside?

- **Scripts**: Handy command-line tools for common tasks.
- **Docker Configs**: Quick setups to get containers up and running without the fuss.
- **Automation Snippets**: A few automation scripts to save time.
- **and more..."

## Getting Started

1. **Clone the Repo:**
   ```bash
   git clone git@github.com:tscrond/ai-lab.git
   cd ai-lab
   ```
2. **Download stable diffusion models:**
    ```bash
    ./ai-stack.sh download
    ```
3. **Start AI Stack with chosen stable-diffusion UI (auto,auto-cpu,comfy,comfy-cpu):**
    ```bash
    ./ai-stack run auto
    ```
4. Configure Open WebUI to use Image Generation Backend (and other params)

Steps to configure:
- Go to `Settings>Admin Settings>Images`
- Insert your URL (probably `http://auto:7860`
- Set other parameters:

    ```
    Set Sampler
    DPM++ 2M
    Set Scheduler
    Karras
    Set CFG Scale
    7
    Set Default Model
    Realistic_Vision_V5.1.ckpt [089b46befc]
    Set Image Size
    1280x800
    Set Steps
    50
    ```

5. ***Enjoy!***


## Want to Contribute?

If you've got something cool to add, just:

1. Fork the repo.
2. Make your changes.
3. Submit a pull request with a brief description of what you added or fixed.

## License

Everything here is under the MIT License. Check out [LICENSE](LICENSE) for more details.

