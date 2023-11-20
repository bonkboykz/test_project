
# Use the official Node.js 14 image as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install the dependencies
RUN npm install

# Copy the source code to the working directory
COPY . .

# Expose the port that the NestJS application will listen on
EXPOSE 3000

# Start the NestJS application
CMD ["npm", "run", "start"]
