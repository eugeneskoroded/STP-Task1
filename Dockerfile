FROM node:14.16.1

WORKDIR /usr/src/app

COPY ./frontend/package*.json ./frontend/
RUN npm install --prefix ./frontend
COPY ./frontend ./frontend

COPY ./backend/package*.json ./backend/
RUN npm install --prefix ./backend
COPY ./backend/common ./backend/common

CMD ["npm", "run", "start", "--prefix", "./frontend"]