FROM node:14-alpine as build

ARG ENVIRONMENT
ENV NODE_ENV=development
ENV FRONTEND_ENV=$ENVIRONMENT

# set your working directory
WORKDIR /

ENV PATH /node_modules/.bin:$PATH

COPY package*.json ./

COPY . ./

RUN npm i 

RUN npm run dev

# Use a lightweight image for the production environment
# FROM nginx:1.21-alpine

# Copy the built app from the build stage to the nginx web root directory
# COPY --from=build /build /usr/share/nginx/html

# add your nginx configurations
# COPY ./default.conf /etc/nginx/conf.d/default.conf

# Expose port 80 for the application
# EXPOSE 300

# Start the nginx server
CMD ["nginx", "-g", "daemon off;"]
