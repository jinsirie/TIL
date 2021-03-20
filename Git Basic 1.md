

## Git Basic 1- Git installed on Windows

- 운영체제: Windows10 Home
- Commander tool: cmder (included Git)



![image-20210320183531748](C:\Users\User\AppData\Roaming\Typora\typora-user-images\image-20210320183531748.png)





### core.autocrlf

####                           text \r\n :  test\n

##### Windows10 : true

###### carriage-return 

###### line return

> Windows운영체제-> Git 으로 갈땐 carriage-return 삭제해서 보내주고, Git -> 윈도우으로 갈땐 추가하여 보내준다.

##### MacOs : input

###### line feed

> Mac -> Git으로 갈땐  실제로 carrage-return이 붙여지지 않지만, Git으로 업로드될땐 삭제되어 나간다.

 

### Git workflow :

##### working directory 

- untracked
- tracked

>  git add 을 통해 tracked으로 올릴 수 있다. tracked된 파일은 modified   될수있다.

##### staging area

>  repository로 올리게 되면 git commit를 활용한다.



![image-20210320194809046](C:\Users\User\AppData\Roaming\Typora\typora-user-images\image-20210320194809046.png)

![image-20210320195003258](C:\Users\User\AppData\Roaming\Typora\typora-user-images\image-20210320195003258.png)



##### .git directory

>  어떤 규모에 commit을 하면 어떻게 진행할 것인가에 방향성을 잡는다.history 모듈별,기능별로 분류하여 저장하고,commit 메세지에 맞게 commit 진행할 것, 그렇지 않으면 코드리뷰할 떄도 너무나 힘들어진다.







##### 앞으로 생각해볼 것

cmdyer을 활용하여 github으로 바로 commit 하는 방법

master branch 말고도 여러 branch 만들기