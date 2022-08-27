## C_Languages l 220827







#### 1. 서식을 지정하여 문자열 포인터에 문자열 만들기

문자열 포인터를 사용하려면 먼저 malooc 함수로 메모리를 할당한 뒤 sprintf함수로 문자열을 만들면 된다.

- sprintf(문자열포인터, 서식, 값)

```c
#define _CRT_SECURE_NO_WARNINGS // sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>	//sprintf 함수가 선언된 헤더 파일
#include<stdlib.h> // malloc,free 함수가 선언된 헤더파일

int main()
{
	char* s1 = malloc(sizeof(char) * 20);	//char 20개 크기 만큼 동적 메모리 할당

	sprintf(s1, "Hello,%s", "world!"); //"Hello,%s"로 서식을 지정하여 s1저장

	printf("%s\n", s1); // Hello,world! : 문자열 s1 출력

	free(s1); // 동적 메모리 해제

	return 0;

}
```



문자열 뿐만아니라 서식 지정자를 사용하여 C 언어의 다양한 값(자료형)도 문자열로 만들 수 있습니다.

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include<stdlib.h>

int main()
{
	char* s1 = malloc(sizeof(char) * 30);

	sprintf(s1,"%c %d %f %e", 'a', 10, 3.2f);

	printf("%s\n", s1);

	free(s1);

	return 0;

}
```





#### 

#### 2. 문자열 안에서 문자로 검색하기



```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include<stdlib.h>

int main()
{
	char s1[30] = "A Garden Diary";

	char* ptr = strchr(s1, 'a');	// 'a'로 시작하는 문자열 검색, 포인터 반환

	while (ptr != NULL)				// 검색된 문자열이 없을 때까지 반복
	{
		printf("%s\n", ptr);		//검색된 문자열 출력
		ptr = strchr(ptr + 1, 'a');	//포인터에 1을 더하여 a 다음부터 검색

	}

	return 0;

}
```

- 문자열 안에 'a'로 시작하는 부분을 더 찾으려면 while 반복문을 사용하여 검색된 문자열의 포인터를 strchr함수에 계속 넣어서 반복하는데, NULL이 나오면 더는 검색된 문자열이 없으므로 반복을 끝냅니다.
- strchr함수의 동작순서는 `char *ptr= strchr(s1,'a')`와 같이 처음 함수를 실행하여 "arden Diary"를 찾고, while로  반복하면서 앞에서 결과로 나온 ptr에 1을 더하여 다시 넣어준다. 포인터 연산으로 ptr에 1을 더해주면 "rden Diary"가 되므로 다음번 'a'를 찾을 수 있게 된다.





