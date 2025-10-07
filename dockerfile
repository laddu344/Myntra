# Use Node.js 18 as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json from the Myntra/ directory
COPY Myntra/package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code from the Myntra/ directory
COPY Myntra/ ./

# Expose the port your app runs on
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
