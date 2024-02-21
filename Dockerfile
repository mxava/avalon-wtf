# Use Node.js image for build image
FROM node:18 as build

WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./
RUN npm install
COPY . .

# Build the React app for prod
RUN npm run build

# Use Nginx for prod server
FROM nginx:alpine

# Copy built react app to the web server directory
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80 for Nginx
EXPOSE 80

# Start Nginx at runtime
CMD ["nginx", "-g", "daemon off;"]