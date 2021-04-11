### C Language|210411

>  복합 대입 연산자
>
>  관계연산자
>
>  비트연산자





#### 1. 복합 대입 연산자

+=처럼 대입 연산자 =와 산술 연산자를 합쳐놓은 연산자



##### 1.1실습

```c
#include <stdio.h>

int main(void)
{
	int x = 10, y = 10;
	printf("x = %d y =%d \n", x, y);

	x += 1;
		printf("(x+=1)이후 x =%d \n", x);
	y *= 2;
	printf("(y*=2)이후 y=%d \n", y);

	return 0;

}
```



-  결과값

![image-20210411125738460](https://github.com/jinsirie/TIL/blob/0fa2d369ad478c7f7b1f0cf9b0f4b1d1b13e5203/img/image-20210411125738460.png)





#### 2. 관계연산자

관계 연산자(relational operator)는 두 개의 피연산자를 비교하는데 사용

| 연산    | 의미                     |
| ------- | ------------------------ |
| x == y  | x와 y가 같은가?          |
| x ! = y | x와 y가 다른가?          |
| x > y   | x가 y보다 큰가?          |
| x >= y  | x가 y보다 크거나 같은가? |
| x <= y  | x가 y보다 작거나 같은가? |





##### 2.1 실습

```c
#include <stdio.h>

int main(void)
{
	int x, y;

	printf("두 개의 정수를 입력하시오: ");
	scanf_s("%d%d", &x, &y);

	printf("%d == %d의 결괏값: %d\n", x, y, x == y);
	printf("%d != %d의 결괏값: %d\n", x, y, x!= y);
	printf("%d > %d의 결괏값: %dn", x, y, x > y);
	printf("%d < %d의 결괏값: %d\n", x, y, x < y);
	printf("%d >= %d의 결괏값: %dn", x, y, x >= y);
	printf("%d <= %d의 결괏값: %d\n", x, y, x <= y);

	return 0;

	
}
```



- 결과값

![image-20210411131044533](https://github.com/jinsirie/TIL/blob/0fa2d369ad478c7f7b1f0cf9b0f4b1d1b13e5203/img/image-20210411131409300.png)





#### 3.비트 연산자

| 연산자 | 연산자의 의미   | 설명                                                   |
| ------ | --------------- | ------------------------------------------------------ |
| &      | 비트 AND        | 두 개의 피 연산자의 해당 비트가 모두1이면1, 아니면 0   |
| \|     | 비트 OR         | 두 개의 피연산자의 해당 비트중 하나만 1이면1, 아니면 0 |
| ^      | 비트 XOR        | 두 개의 피 연산자의 해당 비트의 값이 같으면 0, 아니면1 |
| <<     | 왼쪽으로 이동   | 지정된 갯수만큼 모든 비트를 왼쪽으로 이동한다.         |
| >>     | 오른쪽으로 이동 | 지정된 갯수만큼 모든 비트를 오른쪽으로 디오한다.       |
| ~      | 비트 NOT        | 0은 1로 만들고 1은 0로 만든다.                         |



##### 3.1 실습

%08X는 8자리의 16진수로 표시하는 의미!

```c
#include <stdio.h>

int main(void)
{
	int x = 9;  //1001
	int y = 10; //1010

	printf("%08X & %08X = %08X\n", x, y, x & y);
	printf("%08X| %08X = %08X\n", x, y, x | y);
	printf("%08X^%08X=%08X\n", x, y, x ^ y);
	printf("~%08X = %08X\n", x, ~x);

	return 0;


}
```

- 결과값

![image-20210411135633347](https://github.com/jinsirie/TIL/blob/0fa2d369ad478c7f7b1f0cf9b0f4b1d1b13e5203/img/image-20210411135633347.png)