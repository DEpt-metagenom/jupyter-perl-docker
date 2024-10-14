# Base image with a lightweight version of Ubuntu
FROM ubuntu:24.04

# Update package lists and install dependencies
RUN apt-get update && apt-get install -y \
    sudo \
    curl \
    wget \
    build-essential \
    libzmq3-dev \
    libssl-dev \
    libapp-repl-perl \
    cpanminus \
    python3 \
    python3-pip

## Install Devel::IPerl using cpanm
RUN cpanm Devel::IPerl

# Install Jupyter Notebook via pip
RUN pip3 install jupyter --break-system-packages

# Create the necessary directory for the Perl kernel
RUN mkdir -p /usr/local/share/jupyter/kernels/perl5

# Copy kernel.json from the build context to the correct directory
COPY kernel.json /usr/local/share/jupyter/kernels/perl5/kernel.json

# Expose the Jupyter notebook port
EXPOSE 8888

# Set the working directory
WORKDIR /workspace

# Command to run Jupyter Notebook on container start
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
