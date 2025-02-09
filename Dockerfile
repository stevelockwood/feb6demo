# Use base image for NodeJS
FROM node:14-alpine

ARG buildtime
ENV BUILDTIME=$buildtime

# Copy application code.
COPY . /app/

# Change the working directory
WORKDIR /app

# Install dependencies.
RUN npm install

# Start the Express app
CMD ["node", "server.js"]
