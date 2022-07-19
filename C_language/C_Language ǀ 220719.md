





#### #아래와 같은 경우 if 는 제대로 동작하지 않고, 뒤에 오는 코드가 무조건 실행

```c
#include <stdio.h>

int main()
{
	int num1 = 5;

	if (num1 == 10); //if 조건문 끝에는 세미클론을 붙이면 안됨
	{
		printf("10입니다 .\n");
	}

	return 0;
}
```







#### #코드가 두 줄이상 일때는 중괄호 생략에 유의

```c
#include <stdio.h>

int main()
{
	int num1 = 10;

	if (num1 == 10)
	{
		printf("10입니다.\n");
	}

	return 0;
}
```



#### #IF 실수와 문자비교

```c

#include <stdio.h>

int main()
{
	int num1 = 5;

	if (num1 == 10)
    {
        printf("if 조건문\n");		// if 에서 중괄호를 생략하면 첫 번째 줄만 실행
		printf("10입니다.\n");		// 중괄호가 없으므로 if 결과와는 관계없이 항상 실행
    }
		return 0;
}
```



```c
#include <stdio.h>

int main()
{
	float num1 = 0.1f;
	char c1 = 'a';

	if (num1 == 0.1f)	//실수 비교
		printf("0.1입니다.\n");

	if (c1 == 'a')		//문자 비교
		printf("a입니다.\n");

	if (c1 == 97)		//문자를 ASCII 코드로 비교
		printf("a입니다.\n");
}
```





```c
#define _CRT_SECURE_NO_WARNINGS		// scanf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>

int main()
{
	int num1;

	scanf("%d", &num1);

	if (num1 == 10)
	{
		printf("10입니다.\n");
	}

	if (num1 == 20)
	{
		printf("20입니다.\n"); // "20입니다."를 출력
	}
}
```

