FROM strapi/base
WORKDIR /opt/app
COPY ./package*.json ./
RUN npm install
COPY . .
ENV NODE_ENV production
ENV DATABASE_NAME=project_miq
ENV DATABASE_HOST=pgdb
ENV DATABASE_PORT=5432
ENV DATABASE_USERNAME=miq
ENV DATABASE_PASSWORD=zft3cMAZZR!o
RUN npm run build
EXPOSE 1337
CMD [ "npm" , "start"]