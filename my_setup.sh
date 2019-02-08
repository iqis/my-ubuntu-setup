#!/bin/bash
apt-get update

# R
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
echo "deb http://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/" >> /etc/apt/sources.list
apt update 
apt install -y r-base

# emacs, ess
apt install -y emacs ess

# r packages
apt install libcurl4-openssl-dev libssl-dev libxml2-dev # system dependencies
Rscript -e "install.packages('tidyverse')"
Rscript -e "install.packages('devtools')"


# rstudio
wget -O ~/Downloads/rstudio.deb https://download1.rstudio.org/rstudio-xenial-1.1.463-amd64.deb
sudo apt -f install ~/Downloads/rstudio.deb
rm ~/Downloads/rstudio.deb

# Python 3.7
apt install -y python3.7 python3-pip

# git
apt install -y git

# upgrade everything
apt upgrade -y
