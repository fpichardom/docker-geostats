FROM quay.io/jupyter/base-notebook:latest

USER root

# System dependencies if needed
# RUN apt-get update && apt-get install -y \
#     package-name \
#     && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}

# Configure conda channels with conda-forge priority for R packages
RUN conda config --add channels conda-forge && \
    conda config --set channel_priority strict

# Copy environment files
COPY --chown=${NB_UID}:${NB_GID} environment.yml /tmp/environment.yml
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/requirements.txt

# Install conda packages with mamba for faster resolution
RUN mamba env update -n base -f /tmp/environment.yml && \
    mamba clean --all -f -y

# Install any remaining pip-only packages
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set the working directory
WORKDIR /home/jovyan/work
