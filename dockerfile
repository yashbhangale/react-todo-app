# Use the official Node.js 16 image as a base image
FROM node 

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the remaining app files to the working directory
COPY . .

# Expose the port where your React app will run
EXPOSE 3000

# Set the command to run your React app
CMD ["npm", "start"]
