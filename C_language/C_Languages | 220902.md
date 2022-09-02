#### 1. 문자열의 오른쪽 끝부터 문자로 검색하기
- strchr 함수는 문자열의 처음부터 문자를 검색해서 반환하지만, strrchr 함수는 문자열의 끝에서 부터 문자를 검색하며 함수 이름은 문자열의 오른 쪽부터 문자를 찾을 수 있도록 유래되었다.
	- strrchr(대상문자열, 검색할문자);
		- char *strrchr(char * const_String, int const _Ch);
		- 문자열의 끝에서부터 역순으로 검색해서 문자를 찾았으면 해당 문자로 시작하는 문자열의 포인터를 반환, 문자가 없으면 NULL을 반환
```c

#include <stdio.h>

#include <string.h>

  

int main()

{

char s1[30]="A Garden Diary"; //크기가 30인 char형 배열을 선언하고 문자열 할당

  

char *ptr=strrchr(s1,'a'); //문자열 끝에서부터 'a'로 시작하는 문자열 검색

  
  

printf("%s\n",ptr);

  

return 0;

}
```


#### 2. 문자열 안에서 문자열로 검색하기
strstr 함수는 문자열 안에서 문자열을 검색한다.
- strstr(대상문자열, 검색할 문자열);
	- char *strstr(char * const_String, char const*const_SubString);
	- 문자열을 찾았으면 문자열로 시작하는 문자열의 포인터를 반환, 문자열이 없으면 NULL을 반환


```c
#include <stdio.h>

#include <string.h>

  

int main()

{

char s1[30]="A Garden Diary"; //크기가 30인 char형 배열을 선언하고 문자열 할당

  

char *ptr=strstr(s1,"den"); //den으로 시작하는 문자열 검색, 포인터 반환

  

printf("%s\n", ptr);

  

return 0;

}
```

또는  while 문을 사용하여 문자열을 계속 반복할 수 있습니다.

```c
#include <stdio.h>

#include <string.h>

  

int main()

{

char s1[100]="A Garden Diary A Garden Diary A Garden Diary";

  

char *ptr=strstr(s1, "den"); // den으로 시작하는 문자열 검색, 포인터 반환

  

while(ptr !=NULL) //검색된 문자열이 없을 때까지 반복

{

printf("%s\n",ptr); //검색된 문자열 출력

ptr=strstr(ptr+1,"den"); //den 포인터에 1을 더하여 e부터 검색

}

}
```