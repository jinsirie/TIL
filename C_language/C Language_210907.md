### C Language|210907

> 1. 벌써가을이라니 반복구문을 복습...되새기어보자

### 1. while

반복구조를 이용하여 1부터 1000까지 합을 구해보기. 변수 sum 을 정의해놓고 계속 여기다가 정수를 계속 누적하는 방법



```c
#include<stdio.h>

int main(void)
{
	int i, sum;

	i = 1;
	sum= 0;
	while (i <= 1000)
	{
		sum += i;
		i++;
	}
	printf("합은 %d입니다.\n", sum);
	return 0;
}
```







### 2.do-while

입력을 처리하는 부분에서 많이 사용되며, while문과 다른 점은 반복 분장이 적어도 한번은 실행된다.

```c
//do-while 문을 이용한 메뉴
#include<stdio.h>
int main(void)
{
	int i = 0;
	do
	{
		printf("1--파일열기\n");
		printf("2--파일저장하기\n");
		printf("3--종료\n");
		printf("하나를 선택하시오: ");
		scanf_s("%d", &i);

	} while (i < 1 || i> 3);

	printf("선택된 메뉴=%d\n", i);
		return 0;
}
```

