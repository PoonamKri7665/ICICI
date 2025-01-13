# Use an official Node.js runtime as an example
FROM node:16

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the application
COPY . .

# Expose the port and run the application
EXPOSE 3000
CMD ["npm", "start"]
