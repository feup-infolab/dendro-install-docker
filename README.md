# dendro-install-docker
Files for installing Dendro via Docker

## Instructions 

To install Dendro using Docker, do the following:

1. Install [Docker](https://docs.docker.com/docker-for-windows/install/)
2. Open a Terminal window on Linux/Mac or press Ctrl+R on Windows, type cmd.exe in the box that appears and press Enter
3. Clone the Dendro Docker installation repository by pasting this code
````bash
git clone https://github.com/feup-infolab/dendro-install-docker dendro-install docker
````
4. Run the installation command in the same terminal and wait until no more text is printed. It can take several minutes.
````bash
cd dendro-install docker
docker-compose up
````
5. Access your dendro installation at [127.0.0.1:3001](http://127.0.0.1:3001) in your browser.
6. When you want to stop Dendro, just press Ctrl+C at the terminal window

### Installation scripts

If you want to install Dendro closer to the metal, or in production environments, we recommend that you try out our scripts for installing Dendro on Ubuntu 16.04 LTS:

[Installation scripts for production machines](https://github.com/feup-infolab/dendro-install) (this is recommended for IT professionals).
