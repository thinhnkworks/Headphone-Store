# Start with the official Node.js image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --force

# Copy the rest of your app's source code
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port 3000 to the Docker host, so we can access it from the outside
EXPOSE 3000

# Start the application
CMD ["npm", "run", "dev"]
