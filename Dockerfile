# Base image https://hub.docker.com/_/r-base
FROM r-base:latest

## copy files
COPY install_packages.R install_packages.R
COPY script.R script.R

## install R-packages
RUN Rscript install_packages.R

# Run script.R with "Rscript" command
CMD [ "Rscript", "./script.R" ]