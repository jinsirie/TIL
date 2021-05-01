### C Language|210501

>1. 조건 연산자
>2. 논리 연산자
>3. 단축계산



## 1.조건연산자

C에서 유일하게 3개의 피연산자를 가지는 삼항 연산자이다.

```c
BIG = (X > Y)? X:Y;	
```

조건 (x > y)가 참이면 x가 수기의 값으로 반환된다. 조건이 거짓이면 Y가 수식의 값으로 변환된다.

조건 연산자는 두 수중에서 최대값이나 최소값을 구하는 문장에 널리 사용



```c
absolute_valye=(x > 0)? X: -X; //절대값 계산
big=(X > y)? X:y; //최대값 계산
small= (x < y)? x:y; //최소값 계산
```





```c
#include <stdio.h>

int main(void)
{
	int x, y;
	
	printf("첫번쨰 수=");
	scanf_s("%d", &x);
	printf("두번째 수=");
	scanf_s("%d", &y);

	printf("큰수=%d \n", (x > y) ? x : y);
	printf("작은수=%d \n", (x < y) ? x : y);

}
```



## 2. 논리 연산자

논리연산자는 여러 개의 조건을 조합하여 참인지 거짓인지 따질 때 사용



| 연산   | 의미                                                     |
| ------ | -------------------------------------------------------- |
| x&&y   | AND연산, x와 y가 모두 참이면 참, 그렇지 않으면 거짓      |
| x\|\|y | OR연산, x나 y중에서 하나만 참이면 참, 모두 거짓이면 거짓 |
| !x     | NOT 연산, x가 참이면 거짓, x가 거짓이면 참               |





```c
#include <stdio.h>

int main(void)
{
	int number;

	printf("정수를 입력하시오: ");
	scanf_s("%d", &number);

	if (number >=0  && number <= 100)
		printf("입력한 정수가 0에서 100사이에 있습니다. \n");
	else
		printf("입력한 정수가 0에서 100사이가 아닙니다. \n");

	return 0;
}

```



## 3.단축 계산

AND 연산자의 경우, 여러개의 피 연산자 중에서 처음 피연산자의 값이 거짓이면 다른 피연산자들은 계산되지 않는다.

OR 연산자에서도 마찬가지이다. 첫 번째 피연산자의 값이 참이면 나머지 피연산자들을 계산하지 않는다. 이것을 단축 계산이라고 한다.