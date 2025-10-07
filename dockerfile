# Use official Node.js LTS image
FROM node:18

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app files
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
