# Wordle Web

A web-based Wordle game built with React and Docker.

## Deployment on Render.com

1. Create an account on [Render.com](https://render.com)
2. Create a new Web Service
3. Connect your repository
4. Select "Docker" as the environment
5. Use the following settings:
   - Name: coolwordle
   - Branch: main
   - Root Directory: ./
   - Environment Variables:
     - PORT: 3000
     - NODE_ENV: production
     - VITE_APP_TITLE: "Wordle Desktop"
     - VITE_APP_DESCRIPTION: "A web-based Wordle game"

The app will be automatically built and deployed whenever you push changes to the main branch. 