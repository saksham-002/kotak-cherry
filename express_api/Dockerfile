FROM node:latest as build

WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

#########MULTI IMAGE##############
FROM node:alpine

WORKDIR /app

# Copying Build files only
COPY --from=build /app/ .

EXPOSE 3000

CMD [ "npm", "start" ]

