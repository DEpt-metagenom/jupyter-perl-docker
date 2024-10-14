# Docker image containing Jupyter Notebook with Perl 5 kernel

This repository provides a Dockerfile to set up a Jupyter Notebook environment with a Perl 5 kernel. It allows you to run and interact with Perl 5.38 code within a Jupyter Notebook interface.

You can either build the Docker image from the provided Dockerfile or pull the pre-built image from Docker Hub.

## Features

- **Jupyter Notebook**: A web-based interactive development environment.
- **Perl 5.38 Kernel**: Run Perl scripts and commands within Jupyter notebooks.
- **Dockerized**: Encapsulates the entire setup in a Docker container, making it easy to use and portable.

## Prerequisites

- [Docker](https://www.docker.com/get-started) installed on your system.
- Your user must have permissions

## Quick Start

### Option 1: Pull the Pre-built Docker Image from Docker Hub

You can pull a pre-built Docker image from Docker Hub, avoiding the need to build the image locally.

1. Pull the image:

   ```bash
   docker pull deptmetagenom/jupyter-perl-docker
   ```

2. Run the container:

   ```bash
   docker run -p 8888:8888 deptmetagenom/jupyter-perl-docker
   ```

3. Access Jupyter Notebook:

   Open a web browser and go to the following URL:

   ```
   http://localhost:8888
   ```

   You will be prompted to enter a token, which will be displayed in the terminal when the container starts.

4. Using the Perl Kernel:

   In the Jupyter interface, create a new notebook and select the **Perl 5.38** kernel from the "Kernel" dropdown. You can now write and run Perl code directly within Jupyter.

---

### Option 2: Build the Docker Image Locally

If you prefer to build the Docker image yourself from the Dockerfile in this repository, follow these steps:

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/jupyter-perl5-docker.git
   cd jupyter-perl5-docker
   ```

2. Build the Docker image:

   ```bash
   docker build -t jupyter-perl5-notebook .
   ```

3. Run the container:

   ```bash
   docker run -p 8888:8888 jupyter-perl5-notebook
   ```

4. Access Jupyter Notebook:

   Open a web browser and go to the following URL:

   ```
   http://localhost:8888
   ```

   You will be prompted to enter a token, which will be displayed in the terminal when the container starts.

5. Using the Perl Kernel:

   In the Jupyter interface, create a new notebook and select the **Perl 5.38** kernel from the "Kernel" dropdown. You can now write and run Perl code directly within Jupyter.

---

## Customizing the Setup

If you want to customize the `kernel.json` file or modify any aspect of the environment, make the necessary changes to the files and rebuild the Docker image.

- The `kernel.json` file, which is required for the Perl 5 kernel for Jupyter to work, is located at `/usr/local/share/jupyter/kernels/perl5/kernel.json` within the container.
- To copy a modified `kernel.json` file, make sure it's in the same directory as the Dockerfile and rebuild the image.

## Stopping the Container

To stop the running container, press `CTRL+C` in the terminal where it's running, or find the container ID and stop it with:

```bash
docker ps
docker stop <container_id>
```

## Contributing

If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
