---
attachments: [Clipboard_2022-05-09-21-14-30.png, Clipboard_2022-05-09-21-19-02.png, Clipboard_2022-05-09-21-24-38.png]
title: C_Language | 220509
created: '2022-05-09T12:06:17.727Z'
modified: '2022-05-09T12:29:21.191Z'
---

# C_Language | 220509
### 인수 (argument)
 > 호출 프로그램에 의하여 함수에 실제로 전달되는 값. 함수가 호출될 때마다 인수는 함수의 매개 변수로 전달.
### 반환 값 (return value)
 > 호출된 함수가 호출한 곳으로 작업의 결곽값을 전달하는 방법.
 > "return" 문장 뒤에 있는 수식의 계산 값 = 함수의 반환 값
 >> "return" 문장을 사용하지 않으면 함수 안에 들어 있는 문장이 전부 실행되고 종료를 나타내는 중괄호 }를 만나게 되면 함수는 값을 반환하지 않고 종료.


#### case#1
```
#include <stdio.h>

//함수를 정의한다.
int get_integer()
{
	int value;
	printf("정수를 입력하시오 :");
	scanf_s("%d", &value);
	return value;
}
int main(void)
{
	int x = get_integer(); //함수를 호출한다.
	int y = get_integer(); //함수를 호출한다.
	int result = x + y;
	printf("두수의 합 = %d \n", result);

	return 0;
}
```


 ![](https://github.com/jinsirie/TIL/blob/bcef2cd63ac6decd140758f21173db885693b9dc/img/Clipboard_2022-05-09-21-14-30.png)


#### case#2
```
//두수 중에서 큰 수를 찾는 함수 예제
#include <stdio.h>

//함수를 정의한다.
int get_integer()
{
	int value;
	printf("정수를 입력하시오 :");
	scanf_s("%d", &value);
	return value;
}

//함수를 정의한다.
int get_max(int x, int y)
{
	if (x > y) return(x);
	else return(y);
}

int main(void)
{
	int a = get_integer();
	int b = get_integer();

	printf("두수 중에서 큰수는 %d입니다.\n", get_max(a, b)); //함수 호출
	return 0;
}

```



 ![](https://github.com/jinsirie/TIL/blob/bcef2cd63ac6decd140758f21173db885693b9dc/img//Clipboard_2022-05-09-21-19-02.png)

#### case#3
```
#include <stdio.h>

//함수를 정의한다.

int get_integer()
{
	int value;
	printf("정수를 입력하시오 : ");
	scanf_s("%d", &value);
	return value;
}

//함수를 정의한다.
int power(int x, int y)
{
	int i;
	long result = 1;

	for (i = 0; i < y; i++)
		result *= x; //result = result*x
	return result;
}

int main(void)
{
	int x = get_integer(); //함수를 호출한다.
	int y = get_integer(); //함수를 호출한다.
	int result = power(x, y);
	printf("%d의 %d승 = %d \n", x, y, result);

	return 0;
}
```

![](https://github.com/jinsirie/TIL/blob/bcef2cd63ac6decd140758f21173db885693b9dc/img//Clipboard_2022-05-09-21-24-38.png)


