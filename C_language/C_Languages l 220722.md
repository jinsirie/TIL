## C_Languages l 220722



#### 1.삼항연산자 Case#1

```c
#include <stdio.h>

int main()
{
	int num1 = 5;

	//함수 안에서 삼항 연산자 사용
	printf("%s\n", num1 == 10 ? "10입니다." : "10이 아닙니다.");

	return 0;
}
```

- 삼항연산자를 함수에 바로 사용하여 결과를 출력, 결괏값을 함수에 전달할 때 유용





#### 2. AND 연산자 사용

```c
#include <stdio.h>

int main()
{
	printf("%d\n", 1 && 1);
	printf("%d\n", 1 && 0);
	printf("%d\n", 0 && 1);
	printf("%d\n", 0 && 0);

	printf("%d\n", 2 && 3);

	return 0;
}
```



#### 3. OR 연산자 사용

```c
#include <stdio.h>

int main()
{
	printf("%d\n", 1 || 1);
	printf("%d\n", 1 || 0);
	printf("%d\n", 0 || 1);
	printf("%d\n", 0 || 0);

	printf("%d\n", 2 || 3);

	return 0;
}
```



#### 4. NOT연산자 이용

```c
#include <stdio.h>

int main()
{
	printf("%d\n", !1);
	printf("%d\n", !0);

	printf("%d\n", !3);


	return 0;
}
```



#### 5.조건식과 논리 연산자 사용

```c
#include <stdio.h>

int main()
{
	int num1 = 20;
	int num2 = 10;
	int num3 = 30;
	int num4 = 15;

	printf("%d\n", num1 > num2 && num3 > num4); //참
	printf("%d\n", num1 > num2 && num3 < num4); //거짓

	printf("%d\n", num1 > num2 || num3 < num4); //참
	printf("%d\n", num1 < num2 || num3 < num4); //거짓

	printf("%d\n", !(num1 > num2));				//거짓

	return 0;
}
```

- 비교 연산자와 논리 연산자 연달아서 나오면 알아보기가 어렵고, 다음과 같이 괄호를 사용하여 의도를 명확하게 나타내는 것이 좋습니다.