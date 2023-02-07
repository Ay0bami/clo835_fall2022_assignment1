# Use an official base image as the starting point
FROM ubuntu:20.04
RUN apt-get update -y

# Copy the application code to the working directory
COPY . /app

# Set the working directory
WORKDIR /app

# Install the dependencies
RUN set -xe \
    && apt-get update -y \
    && apt-get install -y python3-pip \
    && apt-get install -y mysql-client 
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the default port
EXPOSE 8080

#Define Entrypoint
ENTRYPOINT [ "python3" ]

# Define the command to run the application
CMD [ "app.py" ]