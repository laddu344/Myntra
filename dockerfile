# Use official Node.js 18 image as base
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json from the subfolder (Myntra)
COPY Myntra/package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code from subfolder
COPY Myntra/ ./

# Expose the port your app runs on
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
