# itorch-notebook

Creates a docker container with Torch, Jupyter notebook and the Facebook Jupyter kernel for Torch

## Advantages

- Torch installs global dependencies which are hard to remove. This is completely isolated from your host OS and will not mess it up!
- Works out the box on Mac OSX, Linux, Windows
- Use the browser-based Jupyter notebook for playing around with Torch without having to use the console. Includes autocomplete, plotting, visualisation etc. See https://github.com/facebook/iTorch to see what it can do
- Keep your source files in your preferred directory (no need to transfer them into the VM)

## Install Docker

- Mac: download docker toolbox https://www.docker.com/products/docker-toolbox
- Windows: download docker toolbox https://www.docker.com/products/docker-toolbox
- Ubuntu: `wget -qO- https://get.docker.com/ | sh`

## Run

Mac:

1. Run Docker Quickstart Terminal from launchpad/applications
2. cd to a directory on your system where you'd like to keep the source files
3. `docker run -it --rm -p 8888:8888 -v $(pwd):/root/data dhunter/itorch-notebook`
4. Visit http:// :8888
5. ctrl+c to stop the process