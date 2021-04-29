### C Language|210429

>1. 조건문



## 1. 3가지의 기본 제어구조

- 순차구조(sequence) : 명령어가 순차석으로 실행되는 구조
- 선택구조(selection) : 둘 중의 하나의 명령어를 선택하여 실행
- 반복구조(iteration) : 동일한 명령어가 반복되면서 실행되는 구조



## 2. if-else

if-else문은 주어진 조건식을 계산하여 참이면 if 이후의 문장을 실행. 조건식이 거짓이면 else 이후의 문장을 실행



#예제1

```c
#include <stdio.h>

int main(void)
{
	int temperature;

	printf("온도를 입력하시오:");
	scanf_s("%d", &temperature);

	if (temperature > 0) //temperature 가 0보다 크면 아래 문장을 실행
		printf("영상의 날씨입니다.\n");
	else
		printf("영하의 날씨입니다.n");

	printf("현재 온도는 %d도 입니다.\n", temperature);
	return 0;
}
```



#예제2

```c
#include <stdio.h>

int main(void)
{
	int number;

	printf("정수를 입력하시오:");
	scanf_s("%d", &number);

	if (number % 2 == 0)// number를 2로 나눈 나머지가 0이면 짝수이다.
		printf("입력된 정수는 짝수입니다.\n");
	else
		printf("입력된 정수는 홀수입니다.\n");

	return 0;
}
```

#### 조건이 참인 경우에 여러 개의 문장이 실행되어야 하는 경우

#예제3 **중괄호를 묶어서 실행**한다!

```c
#include <stdio.h>

int main(void)
{
	int score;

	printf("성적을 입력하시오:");
	scanf_s("%d",&score);
	if (score >= 60) //성적이 60점 이상이면
	{
		printf("합격입니다.\n");
		printf("장학금도 받을 수 있습니다.\n");
	}
	else
	{
		printf("불합격입니다.\n");
		printf("다시 도전하세요.\n");
	}
	return 0;
}
```

> cf.컴파일러는 첫 번째 printf 문장만 조건에 따라서 실행하고 두번째 printf 문장은 조건에 상관없이 무조건 실행하게 되어 다음과 같은 코드와 실행결과는 동일하다.