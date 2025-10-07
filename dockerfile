# Use Node.js 18 (LTS)
FROM node:18

# Set working directory
WORKDIR /usr/src/app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source code
COPY . .

# Expose the app port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
