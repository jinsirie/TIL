## C_Languges l 220905



#### 1. 정수를 문자열로 변환하기

- sprintf(문자열, "%d", 정수);

```c
#define _CRT_SECURE_NO_WARNINGS //sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	char s1[10];	//변환한 문자열을 저장할 배열
	int num1 = 283;	//283은 정수

	sprintf(s1, "%d", num1);	//%d를 지정하여 정수를 문자열로 저장

	printf("%s\n", s1); //283

	return 0;

}
```

- 정수를 16진법으로 표기된 문자열로 변환하려면 서식 지정자로 %x를 사용한다.

```c
#define _CRT_SECURE_NO_WARNINGS //sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	char s1[10];	//변환한 문자열을 저장할 배열
	int num1 = 283;	//283은 정수

	sprintf(s1, "0x%x", num1);	//%x를 지정하여 정수를 16진법으로 표기된 문자열로 저장
								//16진수라는 것을 나타내기 위해 0x를 붙임
	printf("%s\n", s1); //283

	return 0;

}
```



#### 2. 실수를 문자로 변환하기

- sprintf(문자열, "%f", 실수)

```c
#define _CRT_SECURE_NO_WARNINGS //sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	char s1[10];	
	float num1 = 38.972340f;

	sprintf(s1, "%f", num1);	//%f를 지정하여 실수를 문자열로 저장

								//16진수라는 것을 나타내기 위해 0x를 붙임
	printf("%s\n", s1); //283

	return 0;

}
```



![image-20220905204731858](https://github.com/jinsirie/TIL/blob/bd59f6f826e2bfcc2e8bfdc2f08044dd461ecbc4/img/image-20220905204731858.png)



> - sprintf 함수에 서식 지정자로 %f를 지정하면 실수를 문자열로 변환할 수 있고, 물론 %e를 지정하여 다음과 같이 지수 표기법으로 된 문자열로 변환 할수 도 있다.



```c
#define _CRT_SECURE_NO_WARNINGS //sprintf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	char s1[10];	
	float num1 = 38.972340f;

	sprintf(s1, "%e", num1);	//%f를 지정하여 실수를 문자열로 저장

								//16진수라는 것을 나타내기 위해 0x를 붙임
	printf("%s\n", s1); //283

	return 0;

}
```



![image-20220905204904905](https://github.com/jinsirie/TIL/blob/bd59f6f826e2bfcc2e8bfdc2f08044dd461ecbc4/img/image-20220905204904905.png)

- 변환한 문자열이 길어질 수 있으므로 반드시 배열의 크기(동적 메모리로 할당한 크기)를 확인한다.