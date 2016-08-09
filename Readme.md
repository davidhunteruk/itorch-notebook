# itorch-notebook

- Ubuntu 14.04
- [Torch7](http://torch.ch/)
- [Miniconda](https://docs.continuum.io/anaconda/)
- [Jupyter notebook](http://jupyter.org/)
- [iTorch kernel](https://github.com/facebook/iTorch)

## Advantages

- Torch installs global dependencies which are hard to remove. This is completely isolated from your host OS and will not mess it up!
- Works out the box on Mac OSX, Linux, Windows
- Use the awesome browser-based Jupyter notebook. Includes autocomplete, plotting, visualisation etc. See https://github.com/facebook/iTorch to see what it can do!
- Keep your source files in your preferred directory (no need to transfer them into a VM)

## Usage

To use iTorch in notebook mode, start the container, opening up port 8888:

```bash
docker run -it --rm -p 8888:8888 dhunter/itorch-notebook

# or to mount a host directory (containing notebook files for example)
docker run -it --rm -p 8888:8888 -v PATH_TO_HOST_DIRECTORY:/root/dev dhunter/itorch-notebook

# or to start a container and open a shell
docker run -it --rm  dhunter/itorch-notebook /bin/bash
```

Then visit `localhost:8888` in your browser.