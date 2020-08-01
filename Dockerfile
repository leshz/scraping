#
#  Dockerfile para proyectos Pythno
#

# Base image.
FROM python:3.6

# Create code folder.
RUN mkdir /code

# Set working dir.
WORKDIR /code

# Install required programs.
RUN apt-get update
RUN apt-get install -y \
  gettext \
  vim
RUN pip install -r requirements.txt
# Add source code.
ADD . /code/

EXPOSE 8080