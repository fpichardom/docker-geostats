FROM quay.io/jupyter/base-notebook:latest

USER root

# System dependencies if needed
# RUN apt-get update && apt-get install -y \
#     package-name \
#     && rm -rf /var/lib/apt/lists/*

USER ${NB_UID}

# Copy requirements.txt from the build context root directory
COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/requirements.txt

# Install Python packages
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# Set the working directory
WORKDIR /home/jovyan/work
