## C_Language | 220720



#### if -else #1

```c
#include <stdio.h>

int main()
{
	int num1 = 5;

	if (num1 == 10)
	{
		printf("10입니다.\n");
	}
	else
	{
		printf("10이 아닙니다\n");
	}

	return 0;
}
```





#### if -else #2

```c
#include <stdio.h>

int main()
{
	int num1 = 10;

	if (num1 == 10)
	{
		printf("10입니다.\n");
	}
	else     //else에 세미클론을 붙이면 안 됨
	{
		printf("10이 아닙니다.\n"); //else에 세미클론을 붙였으므로
									//if의 결과와는 관계없이 항상실행됨
	}

	return 0;
}
```



#### if -else #3

- 중괄호 생략

```c
#include <stdio.h>

int main()
{
	int num1 = 10;

	if (num1 == 10)
		printf("10입니다.\n");
	else
		printf("10이 아닙니다.\n");
	return 0;
}
```



#### if -else #4

- 코드가 두 줄이상은 반드시 중괄호로 묶어주기

```c
#include <stdio.h>

int main()
{
	int num1 = 10;

	if (num1 == 10)
	{
		printf("if 조건문\n");
		printf("10입니다.\n");
	}
	else
	{
		printf("else\n");
		printf("10이 아닙니다.\n");
	}

	return 0;
}
```



#### if 조건문의 동작 방식

- if는 '0'일 때는 거짓, '0'이 아닐 떄는 참으로 동작

```c
#include <stdio.h>

int main()
{
	int num1 = 5;

	if (num1 = 10)
		printf("10입니다.\n");

	return 0;
```



#### 조건식을 여러개 지정

```c
#include <stdio.h>

int main()
{
	int num1 = 10;
	int num2 = 20;

	if (num1 == 10 && num2 == 20)	//num1이 10이면서 num2가 20일 때
		printf("참\n");
	else
		printf("거짓\n");
	return 0;
}
```

