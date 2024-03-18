# Use a Node.js base image with a specific version
FROM node:latest

# Set the working directory inside the container
WORKDIR /home/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which your NestJS application runs (default is 3000)
EXPOSE 8000

# Command to start your NestJS application
CMD ["npm", "run", "start:dev"]
