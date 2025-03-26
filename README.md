# docker-geostats

This project includes a Docker Compose setup to run the Python notebooks used in Dr. Ziqi Li GIS5122 Applied Spatial Statistics class at Florida State University (https://github.com/Ziqi-Li/GIS5122).

This provides ready-to-use Jupyter Notebooks with all the dependencies required to run all the code for the class. The notebooks can be used in a regular Juppyter Notebook/lab setup in the browser or VS Code.

Beyond including all the dependencies needed to run the code, this also potentially resolves issues on specific packages, such as `pymer4`, which depends on `rpy2` that, in some cases, has shown issues on Windows machine installations.

## Requirements:
- Computer with Linux, MacOS, or Windows with administrator privileges to run the Docker engine.
- Installation of Docker Engine ([Docker Desktop](https://www.docker.com/products/docker-desktop/) is the easiest path for MacOS and Windows users). An alternative to Docker Desktop can be [Podman Desktop](https://podman-desktop.io/), but it has not been tested with this project.
- [Windows] Windows Subsystem for Linux 2 (WSL2) installed.

## How to use


1. Clone the repository or download zip:
```
git clone https://github.com/fpichardom/docker-geostats.git
```
2. Navigate to the project directory and put the notebooks and data you want to use in the `work` directory. You can create as many subdirectories inside that one as needed.
3. Open terminal.
4. Build and run the docker project using `docker compose up --build.` Add the `-d` argument if you want to leave it running in the background when you close the terminal session.
   - After this step, if you use Docker Desktop, you can run or stop the containers directly in the application without opening the terminal.
6. Open your browser in `http://localhost:8888`, and it should point to your Jupyter Notebook. All the files in the `work` directory should be available for you to use. Any file created or updated will also be saved in the corresponding place within your computer's `work` directory.


