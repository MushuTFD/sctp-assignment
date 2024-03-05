FROM debian:bookworm
WORKDIR /app
COPY . /app/


RUN apt-get update && \
    apt-get install -y curl 

RUN apt update
RUN apt install -y curl iputils-ping


# Install Node.js v21.x
RUN curl -fsSL https://deb.nodesource.com/setup_21.x | bash - && \
    apt-get install -y nodejs


RUN npm install
EXPOSE 8080

CMD ["node", "index.js"]