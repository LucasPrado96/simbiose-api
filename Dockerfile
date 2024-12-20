FROM ghcr.io/puppeteer/puppeteer:23

ENV PUPPERTEER_SKIP_CHROMIUM_DOWNLOAD=true \ 
    PUPPERTEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable



WORKDIR /usr/src/server


COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . .

EXPOSE 8080


CMD ["yarn", "start"]

