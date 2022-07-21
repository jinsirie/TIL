## C_Languages | 220721



#### 1. else if 에 조건식 case

```c
#include <stdio.h>

int main()
{
	int num1 = 30;

	if (num1 == 10)
		printf("10입니다.\n");
	else if (num1 == 20)
		printf("20입니다.\n");
	else
		printf("10도 20도 아닙니다.\n");

	return 0;
}
```

- else of 앞에 else가 오면 컴파일 에러 발생

#### 

#### 2.삼항연산자 test 1

```c
#include <stdio.h>

int main()
{
	int num1 = 5;
	int num2;

	num2 = num1 ? 100 : 200;	//num1이 참이면 num2에 100을 할당.
							//거짓이면 num2에 200을 할당

	printf("%d\n", num2);

	return 0;
}
```



#### 3.삼항연산자 test2

```c
#include <stdio.h>

int main()
{
	int num1 = 5;
	int num2;

	num2 = num1==10  ? 100 : 200;	//num1이 참이면 num2에 100을 할당.
									//거짓이면 num2에 200을 할당
	/*num2 = (num1==10)  ? 100 : 200;*/
	/*	num2 = num1  ? 100 : 200;*/

	printf("%d\n", num2);

	return 0;
}
```

- 비교 연산자로 조건식을 지정할 때는 괄호로 묶어주어 코드의 의도를 명확하게 들어낸다.

