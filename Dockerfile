# Use a lightweight Node.js image
FROM node:18-alpine

# Install serve
RUN npm install -g serve

# Set working directory
WORKDIR /app

# Copy the built files
COPY dist ./dist

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["serve", "-s", "dist", "-l", "3000"]
