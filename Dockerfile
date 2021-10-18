FROM node:15
#forms the image
WORKDIR /app
#set working directory
COPY package.json .
#copy dependencies
RUN npm install
#install
COPY . ./
#cache the result so you dont have to rerun previous step if json packages never change
EXPOSE 3000
CMD ["npm", "run", "dev"]