> [!IMPORTANT]
> Tested only on Ubuntu 24.04, PRs for other systems compatibility highly encouraged ;)

Distro info:
```
PRETTY_NAME="Ubuntu 24.04.2 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04.2 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=noble
LOGO=ubuntu-logo
```

# On-Prem AI Lab Automation Tools

This is a repo for storing useful scripts/automation/configs in the topic of my on-prem AI Lab.

## Lab Features

Currently installed software:

- [x] Ollama with couple of models running
- [x] Open WebUI for chatting
- [x] Stable diffusion software integrated with Open WebUI
- [x] Web search integration with SearXNG

## What’s Inside?

- **Scripts**: Handy command-line tools for common tasks.
- **Docker Configs**: Quick setups to get containers up and running without the fuss.
- **Automation Snippets**: A few automation scripts to save time.
- **and more...**

## Getting Started

Before starting, install `devbox` and `direnv`:

- [Devbox install](https://jetify-com.vercel.app/docs/devbox/installing_devbox/)
- [Direnv install](https://direnv.net/#basic-installation)


0. **Configure the host GPU (preferably CUDA)**
    This step is the most pain-in-the-ass part, good luck ;>
    `TODO: create scripts to automate`   

1. **Clone the Repo:**
   ```bash
   git clone git@github.com:tscrond/ai-lab.git
   cd ai-lab
   ```

2. **Configure .env file:**

  By default searxng listens on localhost, letsencrypt optional if you plan to configure it.

  Workers/threads configuration depends on hardware you are using, the better hardware (CPU), the more you can set.

  ```
  SEARXNG_HOSTNAME=0.0.0.0
  LETSENCRYPT_EMAIL=dupa@mail.com
  
  SEARXNG_UWSGI_WORKERS=7
  SEARXNG_UWSGI_THREADS=7
  ``` 

3. **Download stable diffusion models:**
    ```bash
    ./ai-stack.sh download
    ```
4. **Start AI Stack with chosen stable-diffusion UI (auto,auto-cpu,comfy,comfy-cpu):**
    ```bash
    ./ai-stack.sh run auto
    ```
5. **Configure Open WebUI to use Image Generation Backend (and other params)**

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

6. ***Enjoy!***


## Want to Contribute?

If you've got something cool to add, just:

1. Fork the repo.
2. Make your changes.
3. Submit a pull request with a brief description of what you added or fixed.

## License

Everything here is under the MIT License. Check out [LICENSE](LICENSE) for more details.

***Thanks to @AbdBarho (https://github.com/AbdBarho/stable-diffusion-webui-docker/tree/master) for the nice Docker Compose config ;)***

