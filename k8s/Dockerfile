FROM node:16-alpine
# 어떤 BASE 이미지를 사용할 것인지 명시 #Layer0

WORKDIR /app
# 어떤 어플리케이션 디렉토리에 복사해 올것인지 #Layer1

COPY package.json package-lock.json ./
#프로젝트 파일 복사 #Layer2

RUN npm ci
# json에 명시되어 있는 모든 설치 (특정버전에 설치할 수 있다. ci의 경우) #Layer3
COPY index.js .

ENTRYPOINT [ "node" , "index.js" ]
# 노드란 걸 실행 할 것이고, index.js을 실행하자 #Layer4




