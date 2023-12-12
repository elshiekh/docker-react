FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html


# docker build . 
#docker build -f Dockerfile.dev .
#docker run c6d5c478ed2378fa7dee724043
#docker run -p 3000:3000 c6d5c478ed2378fa7dee724043
#docker run -p 3000:3000 -v pwd:/app e9c029e915ec0a56694acd8720cf7b     pwd:  map pwd info to the app folder 
#docker run -p 3000:3000 -v /app/node_modules -v pwd:/app f18f7644f0b214f6bf5d24f4657d24471 

#docker run -p 3000:3000 -v /app/node_modules -v pwd:/app 0d468fe896e0686dc1d4c853d2c0dc 
#docker-compose up
#docker ps
#docker exec -it ab29e27b28e6 npm run test
# docker attach a3bfb3aff3cf
# docker exec -it a3bfb3aff3cf sh

# nginx -----------------------------
# docker build .
# docker run -p 8070:80 imageId

