## C Languages | 220717

#### 1. 자료형의 확장 이해



```c
#include <stdio.h>

int main()
{
	int num1 = 11;
	float num2 = 4.4f;

	printf("%f\n", num1 + num2);
	printf("%f\n", num1 - num2);
	printf("%f\n", num2 * num2);
	printf("%f\n", num1 / num2);

	return 0;
}
```







#### 2. C언어의 자료형을 섞어서 쓰기

- 컴파일러에서 암시적 형 변환 (impicit type conversion)

```c
#include <stdio.h>

int main()
{
	long long num1 = 123456789000;
	int num2 = 10;

	printf("%lld\n", num1 + num2);
	printf("%lld\n", num1 - num2);
	printf("%lld\n", num1 * num2);
	printf("%lld\n", num1 / num2);

	return 0;
}
```





#### 3. 자료형의 축소

- 실수에서 정수로 표현 범위가 좁은 쪽으로 변환하게 되면 값의 손실이 생김

```c
#include <stdio.h>

int main()
{
	float num1 = 11.0f;
	float num2 = 5.0f;

	int num3 = num1 / num2;

	printf("%d\n", num2);

	return 0;
}
```

- 크기가 다른 정수끼리 연산

```c
#include <stdio.h>

int main()
{
	char num1 = 28;
	int num2 = 1000000002;

	char num3 = num1 + num2; // char보더 큰 숫자를 저장할 수 없음

	printf("%d\n", num3);

	return 0;


}
```



