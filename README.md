# dendro-install-docker
Files for installing [Dendro](https://github.com/feup-infolab/dendro) via Docker.

## What is Dendro?

Dendro is the software powering [INESC TEC](https://dendro.inesctec.pt) and the [University of Porto](https://dendro-rdm.up.pt) data staging platforms. It allows researchers to manage research data in preparation for deposit in any research data repository. "Upload files and fill in metadata once, deposit anywhere you like".

## The user interface

![dendro UI](https://raw.githubusercontent.com/feup-infolab/dendro/master/public/images/Screen%20Shot%202017-04-04%20at%2012.22.08.png "Dendro UI")

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

## Acknowledgements

This work was supported by project NORTE-07-0124-FEDER-000059, financed by the North Portugal Regional Operational Programme (ON.2-O Novo Norte), under the National Strategic Reference Framework (NSRF), through the European Regional Development Fund (ERDF), and by national funds, through the Portuguese funding agency, Fundação para a Ciência e a Tecnologia (FCT). João Rocha da Silva was also supported by research grant SFRH/BD/77092/2011, provided by the Portuguese funding agency, Fundação para a Ciência e a Tecnologia (FCT).

This work is financed by the ERDF – European Regional Development Fund through the Operational Programme for Competitiveness and Internationalisation - COMPETE 2020 Programme and by National Funds through the Portuguese funding agency, FCT - Fundação para a Ciência e a Tecnologia within project POCI-01-0145-FEDER-016736.

<img src="https://github.com/feup-infolab-rdm/dendro-install/raw/master/logos.jpg">

## License

[![License](https://img.shields.io/badge/License-BSD%203--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)

All source code is freely available under a standard [BSD 3-Clause license](https://opensource.org/licenses/BSD-3-Clause).

Copyright (c) 2016, FEUP InfoLab (http://dendro.fe.up.pt)

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
