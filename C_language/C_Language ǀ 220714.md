## C Languages | 220714

#### 1. 곱셈, 나눗셈하기

```c
#include <stdio.h>

int main()
{
	int num1;
	int num2;

	num1 = 2 * 3;	//2에 3을 곱해서 num2에 저장
	num2 = 7 / 2;	//7에서 2를 나누어서 num2에 저장

	printf("%d\n", num1);
	printf("%d\n", num2);

	return 0;
}
```

> 컴퓨터에서는 정수를 '0'으로 나눌수 없다는 점을 기억한다.



##### 1.1 변수에 정수와 '0'을 저장해서 나누면 컴파일 에러는 발생하지 않지만 실행을 하면 에러가 발생

```c
#include <stdio.h>

int main()
{
	int num1 = 1;
	int num2 = 0;
	int num3;

	num3 = num1 / num2; // 1을 '0' 으로 나눔. 실행에러 발생

	printf("%d\n", num3);

	return 0;
}
```





#### 2.실수에서 계산하기

```c
#include <stdio.h>

int main()
{
	float num1;
	float num2;

	num1 = 2.73f * 3.81f;	// 2.73에 3.81을 곱해서 num1에 저장
	num2 = 7.0f / 2.0f;		//7.0에서 2.0을 나누어서 num2에 저장

	printf("%f\n", num1);
	printf("%f\n", num2);

	return 0;
}

```



#### 3. 변수에서 계산하기

```c
#include <stdio.h>

int main()
{
	int num1 = 2;
	int num2 = 7;

	num1 = num1 * 3;
	num2 = num2 / 2;

	printf("%d\n", num1);
	printf("%d\n", num2);

	return 0;
}

```

