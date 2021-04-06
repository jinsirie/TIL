### C Language|210406

>  1.변수와 상수의 정의
>
>  2.기본적인 자료형의 이해
>
> 3. 기호 상수 확인



1.변수의 사용

프로그램에서 값을 저장하는 공간은 변수와 상수로 나눌 수 있다. 변수(variable)는 한 번 값이 저장되었어도 언제든지 다시 다른 값으로 변경가능하다.



![image-20210406211127908](https://github.com/jinsirie/TIL/blob/main/img/image-20210406211127908.png)

​                                           Ref.https://www.jkun.net/445

```c
int x;
printf("변수 x의 크기: %d\n", sizeof(x));   // 변수 x의 크기:4
printf("char형의 크기: %d\n", sizeof(char)); //char형의 크기:1
printf("int형의 크기: %d\n", sizeof(int));   //int형의 크기:4
```



2. 상수

실행 중에 사용자가 변경되지 않는 값은 상수(constant)라고 한다.



3. unsigned 수식자

변수가 음수가 아닌 값만을 나타낸 것을 의미하며, 음수가 제외되면 같은 비트로 더 넓은 범위의 양수를 나타낼 수 있다는 장점이 있다.



4. 오버플로우

   정수형 변수가 나타낼 수 있는 정수의 범위가 제한되어 있기 떄문에, 산술 연산의 결과가 정수형이 나타낼 수 있는 범위를 넘어갈 수도 있다.

```c
#include <stdio.h>

int main(void)
{
	short s_money =32767; // 최댓값으로 초기화한다
	
	
	s_money=s_money +1;
	printf("s_money = %d\n", s_money)
	
	return 0;
}
```



5. 기호 상수(#define 이용)

상수에도 이름을 붙일 수 있는 방법이 있고, 이를 기호 상수(symbolic constant)는 기호를 의하여 상수를 표현한 것이다.

```c
#define EXCHANGE_RATE 1120

won = 1120*dollar  //실제의 값을 사용
won = EXCHANGE_RATE*dollar 		//기호상수 사용
```

