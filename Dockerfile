# Base image
FROM node:14

# Set working directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
