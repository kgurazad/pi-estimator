# Choose a base operating system
FROM ubuntu:18.04

COPY pi.py /code/pi.py

# Update and install necessary packages
RUN chmod +rx /code/pi.py && apt-get update && apt-get upgrade -y && apt-get install -y python3

# Use environment variable to add executable to PATH
ENV PATH "/code:$PATH"
