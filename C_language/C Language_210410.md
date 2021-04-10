### C Language|210410

>  연산자 실습하기



#### 실습1

- #define문을 이용하여 SEC_PER_MINUTE라는 기호상수정의
- 사용자로부터 초 단위의 시간을 받아서 변수 input에 저장한다
- 초 단위의 시간이 몇 분에 해당하는지 알기위해서 초 단위의 입력시간을 SEC_PER_MINUTE로 나눈다.
- 입력받은 시간이 몇 초인지를 알기위해서는 먼저 입력 값에서 분에 해당하는 것들을 제거하고 남은 나머지를 알아야 한다. 

```c
//나머지 연산자 프로그램
#include <stdio.h>
#define SEC_PER_MINUTE 60 //1분은 60초

int main(void)
{
	int input, minute, second;

	printf("초 단위의 시간을 입력하시오:(32억초 이하) ");
	scanf_s("%d", &input, sizeof(input);

	minute = input / SEC_PER_MINUTE; // 몇 분
	second = input % SEC_PER_MINUTE; // 몇 초

	printf("%d초는 %d분 %d초입니다. \n", input, minute, second);
	return 0;

}
```



#### 실습2

```c
#include <stdio.h>
int main(void)

{
	int x, y;

	x = 1;
	y = ++x;
	printf("x=%d y=%d \n", x, y);

	y = x++;
	printf("x=%d y=%d \n", x, y);

	return 0;
}
```



#### 실습3

```c
#include <stdio.h>

int main(void)
{
	int money;
	int candy_price;

	printf("현재 가지고 있는 돈: ");
	scanf_s("%d", &money, sizeof(money));
	printf("캔디의 가격: ");
	scanf_s("%d", &candy_price, sizeof(candy_price));

	//최대한 살 수 있는 사탕 수
	int n_candies = money / candy_price;
	printf("최대로 살 수 있는 캔디의 개수=%d \n", n_candies);

	//사탕을 구입하고 남은 돈
	int change = money % candy_price;
	printf("캔디 구입 후 남은 돈 =%d \n", change);
	return 0;

}
```



#### 고민해야할 출력 값.

> scanf_s에 함수에 대해서 좀더 조사가 필요.
>
> 1>C:\Users\User\source\repos\candy.c\candy.c\candy.c(9,24): warning C4474: 'scanf_s' : 서식 문자열에 전달된 인수가 너무 많습니다.
> 1>C:\Users\User\source\repos\candy.c\candy.c\candy.c(9,24): message : 자리 표시자 및 해당 매개 변수에는 variadic 인수가 1개 필요하지만 2개가 제공되었습니다.
> 1>C:\Users\User\source\repos\candy.c\candy.c\candy.c(11,30): warning C4474: 'scanf_s' : 서식 문자열에 전달된 인수가 너무 많습니다.
> 1>C:\Users\User\source\repos\candy.c\candy.c\candy.c(11,30): message : 자리 표시자 및 해당 매개 변수에는 variadic 인수가 1개 필요하지만 2개가 제공되었습니다.
> 1>candy.c.vcxproj -> C:\Users\User\source\repos\candy.c\Debug\candy.c.exe