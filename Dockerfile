FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy Source code to working directory
Copy .app.py /app/

#Install Packages from Requirements.txt
#hadolint ignore-DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
    