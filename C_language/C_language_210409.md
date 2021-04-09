### C Language|210409

>1. 수식과 연산자의 개념
>2. scanf 의 오류
>3. 나머지 연산자





#### 1. 수식과 연산자의 개념

- 수식(expression) = 피연산자+연산자

- 연산자(operator)는 연산을 나타내는 기호

- 피연산자(operand)는 연산의 대상

​	-  피연산자의 수의에 따라 단항, 이항, 삼항 연자로 나누어지기도 한다.





#### 실습1

![image-20210409204553495](https://github.com/jinsirie/TIL/blob/0615e169caab210281b76831844beb4c9bc06b16/img/image-20210409204553495.png)

- 8번째 줄 %d + %d 구간을 + 을 삭제했더니 프로그램 실행이 된다.



![image-20210409204840586](https://github.com/jinsirie/TIL/blob/0615e169caab210281b76831844beb4c9bc06b16/img/image-20210409204840586.png)

- 소숫점 이하는 버려지는 정수끼리의 연산



#### 2. scan_s의 오류 해결방법

```c
scanf_s("%lf %lf", &x, &y, sizeof(x), sizeof(y));
```

- sizeof() 함수는 특정한 변수형의 크기를 확인할 때 사용하며 이를 직접 확인가능

- 변수 크기는 플랫폼(정확하게는 컴파일러)마다 다름

- scanf의 오류는 visual2013 이상부터 확인되며 scanf 함수가 취약하니 scanf_s를 사용하거나 _CRT_SECURE_NO_WARNINGS 를 사용하라는 문구가 확인가능

- scanf_s의 함수는 sizeof의 함수를 이용해 해당 숫자의 byte 값을 계산한만큼 가져오게 되있음





#### 실습2

```c
#include <stdio.h>

int main(void)
{
	 double x, y, result;

	printf("두 개의 실수를 입력하시오: ");
	scanf_s("%lf %lf", &x, &y, sizeof(x), sizeof(y)); // 2개의 정수를 동시에 입력받는다.
	//scanf_s("%lf", &x, sizeof(x));
	//scanf_s("%lf", &y, sizeof(y));

	printf("double size = %d\n", sizeof(double));
	result = x + y; //덧셈 연사을 하여서 결과를 result에 대립
	printf("%f + %f = %f\n", x, y, result);

	result = x - y; //뺄셈 연산
	printf("%f - %f = %f\n", x, y, result);

	result = x * y; //곱셈 연산
	printf("%f * %f = %f\n", x, y, result);

	result = x /  y; //나눗셈 연산
	printf("%f / %f = %f\n", x, y, result);

	result = (int)x % (int)y; //나머지 연산
	printf("%f %% %f = %05.3f\n", x, y, result);
	
	return 0;

}
```



#### 3. 나머지 연산자

나머지 연산자를 이용하여 짝수와 홀수를 쉽게 구분할 수 있다.

```c
#include <stdio.h>
#define SEC_PER_MINUTE 60 //1분은 60초

int main(void)
{
	int input, minute, second;

	printf("초 단위의 시간을 입력하시오:(32억초이하) ");
	scanf("%d",& input);

	minute = input / SEC_PER_MINUTE;
	second = input % SEC_PER_MINUTE;

	printf("%d초는 %d분 %d초입니다. \n", input, minute, second);
	return 0;
}
```

