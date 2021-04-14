# Windows환경에서 Git 기본설정



#### 1. git install

https://git-scm.com/ 에서 OS에 맞는 프로그램 설치



#### 2. git Bash 실행

![image-20210414204138807](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414204138807.png)





```
git config --global user.name "사용자"
git config --global user.email "사용자 이메일"
```





#### 3. git add

![image-20210414204831447](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414204831447.png)

- Index에 파일 추가하는 명령어이며, git add명령어 실행하기전 이기 때문에 Untracked files, 추적하지 않는 파일리스트에 노출

![image-20210414204935872](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414204935872.png)

- test.txt 파일이 인덱스(Staging Area)에 포함된 것을 확인
- Changeds to be committed 목록에 있는 파일들은 Staged상태



#### 4.git commit

```
git commit -m "first commit"
```



![image-20210414205136771](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414205136771.png)

- staging 영역의 파일들을 commit



#### 5.git ssh-keygen

```
ssh-keygen -t rsa
```

![image-20210414205504004](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414205504004.png)



```
ssh-keygen -t rsa 생성 후,
*.pub을 cat으로 확인한 뒤 Copy & Paste 하여
GitLab [Add an SSH key]등록
```

![image-20210414205720841](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414205720841.png)

```
등록된 것을 아래와 같이 확인할 수 있다.
```



![image-20210414205749062](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414205749062.png)

#### 7.Remote Repository 연결

- 왼쪽 상단 쪽 Clone 탭에서 주소 확인

```
 git remote add origin git@gitlab.com:huhjinsil/test.git
```



![image-20210414210056707](https://github.com/jinsirie/TIL/blob/c7499e0531c66fc25e48e744bfe69b568dfd8d33/img/image-20210414210056707.png)

