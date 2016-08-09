# itorch-notebook

Creates a docker container with Torch, Jupyter notebook and the Facebook Jupyter kernel for Torch

## Advantages

- Torch installs global dependencies which are hard to remove. This is completely isolated from your host OS and will not mess it up!
- Works out the box on Mac OSX, Linux, Windows
- Use the awesome browser-based Jupyter notebook for playing around with Torch without having to use the console. Includes autocomplete, plotting, visualisation etc. See https://github.com/facebook/iTorch to see what it can do!
- Keep your source files in your preferred directory (no need to transfer them into a VM)

## Install Docker

- Mac: download docker toolbox https://www.docker.com/products/docker-toolbox
- Windows: download docker toolbox https://www.docker.com/products/docker-toolbox
- Ubuntu: follow installation guidelines at docker.com
- Ubuntu: `wget -qO- https://get.docker.com/ | sh`

## Run

Mac:

1. Run Docker Quickstart Terminal from launchpad/applications
2. cd to a directory on your system where you'd like to keep the source files
3. Make a note of the ip returned by: `docker-machine ip default`. You only have to do this once. It will not change.
4. `docker run -it --rm -p 8888:8888 -v $(pwd):/root/data dhunter/itorch-notebook`. This will be slow the first time but will be almost instantaneous on subsequent runs.
5. Visit http://IP_FROM_STEP_3:8888
6. ctrl+c to stop the process

Windows:

1. Run Docker Quickstart Terminal from start menu
2. Make a note of the ip returned by: `docker-machine ip default`. You only have to do this once. It will not change.
3. `docker run -it --rm -p 8888:8888 -v PATH_TO_YOUR_DIRECTORY:/root/data dhunter/itorch-notebook`. This will be slow the first time but will be almost instantaneous on 
4. Visit http://IP_FROM_STEP_3:8888
5. ctrl+c to stop the process

Ubuntu:

1. cd to a directory on your system where you'd like to keep the source files
2. `docker run -it --rm -p 8888:8888 -v $(pwd):/root/data dhunter/itorch-notebook`. This will be slow the first time but will be almost instantaneous on subsequent runs.
3. Visit localhost:8888
4. ctrl+c to stop the process


