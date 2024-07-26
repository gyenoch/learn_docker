# Use an Official node.js runtime as the Base image
FROM node:21-alpine

# Set the working Directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to Container Working Directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of application code to Working Directory
COPY . .

# Expose the port the node.js application will run on
EXPOSE 3000

# Command to run the Node.js application
CMD [ "npm", "start" ]
