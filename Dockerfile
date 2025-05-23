# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Copy files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source
COPY . .

# Expose port
EXPOSE 8080

# Start the app
CMD ["npm", "start"]
