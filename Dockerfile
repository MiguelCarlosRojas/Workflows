# Use the official Node.js 16 image as the base image
FROM node:16

# Set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the app's source code
COPY . .

# Build the TypeScript code
RUN yarn build

# Expose the app on port 3000
EXPOSE 3000

# Start the app
CMD ["yarn", "start"]
