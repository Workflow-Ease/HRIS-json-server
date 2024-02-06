FROM node:20.11

WORKDIR /app

RUN npm install -g npm

RUN npm install -g json-server

COPY ./employee.json /app

CMD ["json-server", "-p", "80", "-w", "/app/employee.json"]
