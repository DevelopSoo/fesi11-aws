FROM node:alpine

# 작업 디렉토리를 설정한다
WORKDIR /usr/src/app

# 파일 복사
COPY . .

RUN npm install

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]