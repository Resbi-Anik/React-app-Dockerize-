FROM node:14-alpine AS development
ENV Node_test_env development

# add a work directory
WORKDIR .

# install dependency
COPY package.json .
COPY package-lock.json .

RUN yarn install

# copy app files
COPY . ../

# Expose port
EXPOSE 3000

# start the app
CMD ["yarn" , "start"]