## C_Languages l 220901



1. #### 문자열을 여러 개 입력받기

- scanf("%s %s...", 배열1, 배열2, ...);
- scanf("%s %s", 문자열포인터1, 문자열 포인터2, ...);

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	char s1[10];	//크기가 10인 char형 배열을 선언
	char s2[10];	//크기가 10인 char형 배열을 선언

	printf("문자열을 두 개 입력하세요: ");
	scanf("%s %s", s1, s2);	//표준 입력에서 공백으로 구분된 문자열 두개를 입력 받음


	printf("%s\n", s1);	//s1의 내용을 출력
	printf("%s\n", s2);	//s2의 내용을 출력


	return 0;

}
```

> - scanf("%s %s",s1, s2);와 같이 서식 지정자로  %s로 두 개 넣어줍니다. 그리고 %s 에 해당하는 문자열이 저장될 배열을 두 개 넣어주면 공백으로 구분된 문자열을 입력 받을 수 있습니다. 여기서는 %s 사이를 공백으로 띄어 주었지만, 공백으로 띄우지 않아도 상관은 없다.
>
> - 문자열을 더 입력 받고 싶다면 다음과 같이 %s와 입력받을 배열( 또는 문자열 포인터)의 갯수를 늘려 줍니다.



```c
char s1[10], s2[10], s3[10], s4[10]

scanf("%s %s %s", s1, s2, s3);
scanf("%s %s %s %s", s1, s2, s3, s4);
scanf("%s %s %s %s %s", s1, s2, s3, s4, s5);

```





#### 2. 서식을 지정하여 배열 형태로 문자열 만들기

- sprintf(배열, 서식, 값);
- sprintf(배열, 서식, 값1,값2,...);

```c
#define _CRT_SECURE_NO_WARNINGS		// sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	char s1[20];	//크기가 20인 char형 배열을 선언

	sprintf(s1, "Hello, %s", "world!");	// "Hello, %s"로 서식을 지정하여 s1에 저장

	printf("%s\n", s1); // Hello,world!: 문자열 s1 출력

	return 0;

}
```

> - sprintf 함수에 문자열을 저장한 배열과 문자열을 만들 서식 그리고 문자열을 만들 값을 순서대로 넣습니다. 이렇게 하면 "Hello, %s" 에서 서식 저장자 %s 부분이 "world!" 로 바뀌면서 s1에 "Hello,world!"가 저장됩니다.
> - 보통 s1과 같이 문자열을 저장할 빈 배열을 버퍼(buffer)라고 한다!



#### 2.1 서식을 지정하여 문자열 포인터에 문자열 만들기

```c
#define _CRT_SECURE_NO_WARNINGS // sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <stdlib.h>

int main()
{
	char* s1 = malloc(sizeof(char) * 20);

	sprintf(s1, "Hello,%s", "world"); //"Hello, %s"로 서식을 지정하여 s1에 저장

	printf("%s\n", s1);		//Hello, world: 문자열 s1 출력

	free(s1);	//동적 메모리 해제

	return 0;
}
```







#### 3.문자를 기준으로 문자열 자르기

- strtok(대상문자열, 기준문자);
  - char *strtok(char *_ String, char const *_Delimiter);
  - 자른 문자열을 반환, 더는 자를 문자열이  없으면 NULL을 반환



```c
#define _CRT_SECURE_NO_WARNINGS // sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <string.h>				//strtok 함수가 선언된 헤더 파일

int main()
{
	char s1[30] = "The Little Prince";// 크기가 30인 char형 배열을 선언한고 문자열 할당
	char *ptr = strtok(s1, " ");// " "공백 문자를 기준으로 문자열을 자름, 포인터 반환

	while (ptr != NULL)			//자른 문자열이 나오지 않을 때까지 반복
	{
		printf("%s\n", ptr);	//자른 문자열 출력
		ptr = strtok(NULL, "");	//다음 문자열을 잘라서 포인터를 반환
	}

	return 0;
}
```

> - strtok(s1, " ");와 같이 " "(공백 문자)를 넣어주면 공백으로 구분하여 문자열을 자릅니다. (단, 기준 문자를 ' '로 묶으면 안됩니다.)
> - strtok 함수는 문자열을 새로 생성해서 반환하는 것이 아니라 자르는 부분을 널 문자(NULL)로 채운 뒤 잘린 문자열을 포인터를 반환한다. 따라서 원본 문자열의 내용을 바꾸므로 사용을 주의해야합니다.

