FROM python:3.6

# Install supporting OS Packages
RUN apt-get update -q && \
        apt-get install -y curl \
        software-properties-common \
        gcc \
        g++ \
        make \
        build-essential \
        ca-certificates \
        libssl-dev \
        python3-dev \
        libffi-dev \
        groff \
        wget
# Clear
RUN apt-get clean

# Install Py dependencies
RUN python3 -m ensurepip && \
        rm -r /usr/lib/python*/ensurepip && \
        pip3 install --upgrade pip

# Copy Python requirements file
COPY requirements.txt /tmp/
COPY requirements.test.txt /tmp/

# Install Python packages
RUN pip install -r /tmp/requirements.txt && \
        pip install -r /tmp/requirements.test.txt

# Workdir
WORKDIR /root


