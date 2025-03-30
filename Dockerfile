# Use official Node.js image as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies inside the container
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port (if necessary)
EXPOSE 3000

# Use the shell to run both commands
CMD sh -c "node index.js && node mailer.js"
