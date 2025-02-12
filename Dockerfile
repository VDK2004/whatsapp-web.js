FROM node:18

# Install system dependencies for Puppeteer and GUI tools
RUN apt-get update && \
    apt-get install -y \
    libxshmfence-dev \
    libgbm-dev \
    wget \
    unzip \
    fonts-liberation \
    libnss3 \
    libatk1.0-0 \
    libdrm2 \
    libxkbcommon0 \
    libxcomposite1 \
    libxdamage1 \
    libxrandr2 \
    libgbm1 \
    libasound2

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

CMD ["npm", "start"]
