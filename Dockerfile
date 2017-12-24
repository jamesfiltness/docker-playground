# Use the official Node 8 runtime as a parent image
FROM node:boron

# Define a NODE_ENV arg and set a default value
# Can be overridden like so docker build --build-arg NODE_ENV=someenv .
ARG NODE_ENV=development

# Define NODE_ENV environment variable
ENV NODE_ENV=${NODE_ENV}

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

# Install node dependencies
RUN npm install

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Run node app when the container launches
CMD ["node", "."]
