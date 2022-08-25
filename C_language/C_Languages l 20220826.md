## **C_Languages l 20220826**



###  1. 문자열 길이 구하기


- strlen(문자열포인터);
- strlen(문자배열);
	- size_t strlen(const *_Str);
	- 문자열의 길이를 반환

```C
#include <stdio.h>

#include <string.h>

  

int main()

{

char *s1="Hello"; //포인터에 문자열 Hello의 주소 저장

char s2[10]="Hello"; //크기가 10인 char형 배열을 선언하고 문자열 할당

  

printf("%lu\n", strlen(s1));

printf("%lu\n",strlen(s2));

  

return 0;

}


```

- Ref.
  책에서는 printf("%d\n", strlen(s1)); 으로 출력하려고 하는데 ,위와 같은 오류가 나서 **%d ---> %lu** 으로 변경하였습니다.
```bash
empCodeRunnerFile.c:9:20: warning: format specifies type 'int' but the argument has type 'unsigned long' [-Wformat]
    printf("%d\n", strlen(s1));
            ~~     ^~~~~~~~~~
            %lu
```
  



### 2. 입력 값을 문자열 포인터에 저장

```c
#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>

#include <stdlib.h>

  

int main()

{

char *s1=malloc(sizeof(char)*10); // char 10 개 만큼이나 동적 메모리 할당

  

printf("문자열을 입력하세요: ");

scanf("%s", s1);

  

printf("%s\n", s1); //문자열의 내용을 출력

  

free(s1); //동적 메모리 해제

  

return 0;

}

```


#### 부록
컴파일러나 운영체제에 따라서 배열이 선언된 메모리나 동적으로 할당한 메모리 뒷부분에 공간이 더 있어 한 두개까지는 더 입력할 수 있으나, 더 많은 문자열을 입력하면 다른 데이터가 있는 메모리 공간을 침범하게 되므로 에러가 발생한다. 원칙적으로는 배열의 크기 -1, 메모리 공간 -1 보다 긴 문자열은 입력 받을 수 없다.
 예전부터 입력 길이 문제로 인해 버퍼 오버플로우(buffer overflow) 공격, 스택 오버플로우(stack overflow) 공격을 이용한 해킹이 많아서, 실무에서는 보안을 위해 미래 입력 값을 겁사하거나 입력 값을 제한하는 함수를 주로 사용한다. 특히 Visual Studio 에서는 scanf 대신 scanf_s, sprintf 대신 sprintf_s 처럼 안전한 함수를 쓰라고 강제한다.
 따라서 지금까지 소스코드 내
  #define _CRT_SECURE_NO_WARNINGS 를 넣어주지 않으면 컴파일 에러가 발생했다.
  