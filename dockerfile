# Use Node.js 18 as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from root
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code from root
COPY . ./

# Expose the port your app runs on
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
