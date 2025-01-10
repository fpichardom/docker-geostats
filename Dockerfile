FROM quay.io/jupyter/base-notebook:latest

# Copy requirements.txt from the build context root directory
COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

# Set the working directory
WORKDIR /home/jovyan/work

# Start the Jupyter Notebook server
ENTRYPOINT [ "start-notebook.py" ]
