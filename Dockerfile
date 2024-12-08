# Use the official Node.js image.
FROM node:14
# Create and change to the app directory.
WORKDIR /usr/src/app
# Copy the dependency definitions.
COPY package*.json ./
# Install dependencies.
RUN npm install
# Copy the app source code.
COPY . .
# Expose the port the app runs on
EXPOSE 3000
# Run the app.
CMD ["npm", "start"]