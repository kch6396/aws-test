# Node.js 이미지 사용
FROM node:22.4.1

# 애플리케이션 디렉토리 설정
WORKDIR /app

# 애플리케이션 의존성 파일 복사
COPY package*.json ./

# 패키지 설치
RUN npm install

# 나머지 애플리케이션 파일 복사
COPY . .

# 애플리케이션 실행 포트 설정
EXPOSE 4000

# 애플리케이션 실행
CMD ["node", "index.js"]
