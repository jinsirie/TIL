## C_Languages l 220726



#### 1. 비트 연산자 사용하기

자료형을 바이트 단위로 구분하여 사용하였지만, 비트 연산자는 바이트 단위보다 더 작은 비트 단위로 연산하는 연산자이다. 비트 연산자는 비트로 옵션을 설정할 때 주로 사용하며 저장 공간을 아낄수 있는 장점이 있다. 이런 방식을 플래그(flag) 라고 한다.

- 비트(Bit) : 2진수를 저장하는 단위
- 바이트(Byte): 8비트 크기의 단위

```c
#include <stdio.h>

int main()
{
	unsigned char num1 = 1;		//0000 0001
	unsigned char num2 = 3;		//0000 0011

	printf("%d\n", num1 & num2);	//0000 0001: 01과 00을 비트 AND 하면 01이 됨
	printf("%d\n", num1 | num2);	//0000 0011: 01과 11을 비트 OR 하면 11이 됨
	printf("%d\n", num1 & num2);	//0000 0010: 01과 11을 비트 XOR하면 10이 됨

	return 0;
}
```



#### 2. 비트 NOT 연산자 사용하기

```c
#include <stdio.h>

int main()
{
	unsigned char num1 = 162;	//162: 10100010
	unsigned char num2;

	num2 = ~num1;

	printf("%u\n", num2);		//93: 0101 1101: num1의 비트 값을 뒤집음

	return 0;
}
```



- unsigned char 자료형을 사용하는 이유는 부호없는 정수이며 1바티크 크기이기 때문이다. 비트 연산으로 부호 비트가 영향을 받지않도록 부호없는 자료형을 사용한다.