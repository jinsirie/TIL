# Spring.start.io
## Spring 으로 Hello world 출력 하기


#### 1. 환경설정
##### 1. 자바 설치
- homebrew 를 통한 설치
home brew openjdk 8 설치 키 체인 오류 발생

![img](https://github.com/jinsirie/TIL/blob/5bfb2b941e04f7f6ae79f47cfd218d90974958dc/img/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202023-03-25%20%EC%98%A4%ED%9B%84%208.15.03.png)


* github Personal Access Token을 재발급 받아 저장 후, 다시 home brew search 실행 시 정상 실행 확인할 수 있다.

![img](https://github.com/jinsirie/TIL/blob/62d7b54b4a79ab478944fa8e0c53b25590c17031/img/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202023-03-26%20%EC%98%A4%ED%9B%84%209.46.37.png)


##### 2. IntelliJ 준비

##### 3.Spring.start.io 접속하여 first project 만들기
 - JAVA 8 버전 기준
 - Spring Boot 2.7.10

 ![img](https://github.com/jinsirie/TIL/blob/62d7b54b4a79ab478944fa8e0c53b25590c17031/img/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202023-03-26%20%EC%98%A4%ED%9B%84%209.57.16.png)


 - zip 파일로 떨어지는 firstproject.zip 을 압축을 풀어, IntelliJ으로 열게되면 아래와 같이  목록이 확인되고, 오늘의 목표는 나의 localhost 에 "Hello word" 페이지를 생성하는 것 이니 src 하위 > main > resources > static > hello.html 에 하나 html 파일을 만들도록 한다.


 ![img](https://github.com/jinsirie/TIL/blob/62d7b54b4a79ab478944fa8e0c53b25590c17031/img/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202023-03-26%20%EC%98%A4%ED%9B%84%2010.00.23.png)


 *여담으로 STS 으로 디버깅 할때, MySQL password 으로 Plugin 을 바꿔서 RUN 이 안되는 경우가 발생했을 때, 로컬에서 어떻게 확인하나 궁금했었는데, 하위 터미널에서 Spring이 찍히는 모습보고 너무 기뻤다고한다..


- 아래와 같이 <h1></h1> 태그로 Hello world 넣어준다.
```
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<h1>hello-world</h1>
</body>
</html>
```


- localhost 으로 접속 시, 헬로 월드를 확인할 수있다!

![img](https://github.com/jinsirie/TIL/blob/62d7b54b4a79ab478944fa8e0c53b25590c17031/img/%EC%8A%A4%ED%81%AC%EB%A6%B0%EC%83%B7%202023-03-26%20%EC%98%A4%ED%9B%84%2010.08.38.png)
