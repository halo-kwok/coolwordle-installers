# Use a lightweight Node.js image
FROM node:18-alpine

# Install serve and vite globally
RUN npm install -g serve vite

# Set working directory
WORKDIR /app

# Copy package files
COPY package.json .
COPY package-lock.json* .

# Install dependencies
RUN npm install

# Copy source files
COPY . .

# Build the app
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["serve", "-s", "dist", "-l", "3000"]
