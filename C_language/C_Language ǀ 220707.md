## C Languages | 220706



##### #CASE 1

```c
#include <stdio.h>

int main()
{
	int num1 = 0;
	int size;

	size = sizeof num1; // 변수 num1의 자료형 크기를 구함

	printf("num1의 크기 : %d\n", size);

	return 0;
}
```

![image-20220707222212965](https://github.com/jinsirie/TIL/blob/9fce695088ffe5e4d22b721754622ec8cfaf06fc/img/image-20220707222212965.png)



##### #CASE 2 자료형의 크기 구하기

```c
#include <stdio.h>

int main()
{
	printf("char: %d, short: %d, int: %d, long: %d, long long: %d\n",
		sizeof(char),
		sizeof(short),
		sizeof(int),
		sizeof(long),
		sizeof(long long)
	);
	return 0;
}
```

![image-20220707222631481](https://github.com/jinsirie/TIL/blob/9fce695088ffe5e4d22b721754622ec8cfaf06fc/img/image-20220707222631481.png)





##### # CASE 3  최솟값과 최댓값 표현하기

- 소스 코드에서 정수의 최솟값을 표현하려면 limits.h 헤더 파일을 사용해야한다.

```c
#include <stdio.h>
#include <limits.h>

int main()
{
	char num1 = CHAR_MIN;	//char의 최솟값
	short num2 = SHRT_MAX; //short의 최솟값
	int num3 = INT_MIN;    //int의 최솟값
	long num4 = LONG_MIN; //long 최솟값
	long long num5 = LLONG_MIN; // long long의 최솟값

	// char, short, int는 %d로 출력하고 long은 %ld, long long %lld로 출력
	printf("%d %d %d %ld %lld\n", num1, num2, num3, num4, num5);
	// -128 -32768 -2147483648 -2147483648 -9223372046854775808

}
```





![image-20220707223235372](https://github.com/jinsirie/TIL/blob/9fce695088ffe5e4d22b721754622ec8cfaf06fc/img/image-20220707223235372.png)



##### #CASE 4 

- 저장할 수 있는 범위 넘어서 오버플로우 완성

```c
#include <stdio.h>
#include <limits.h>

int main()
{
	char num1 = CHAR_MAX + 1;
	short num2 = SHRT_MAX + 1;
	int num3 = INT_MAX + 1;
	long long num4 = LLONG_MAX + 1;

	printf("%d %d %d %lld\n", num1, num2, num3, num4);

	unsigned char num5 = UCHAR_MAX + 1;

	unsigned short num6 = USHRT_MAX + 1;

	unsigned int num7 = UINT_MAX + 1;

	unsigned long long num8 = ULLONG_MAX + 1;

	printf("%u %u %u %llu\n", num5, num6, num7, num8);

	return 0;

}
```

![image-20220707223816076](https://github.com/jinsirie/TIL/blob/9fce695088ffe5e4d22b721754622ec8cfaf06fc/img/image-20220707223816076.png)



##### #CASE 5

- 범위 외의 언더플로우

```c
#include <stdio.h>
#include <limits.h>

int main()
{
	char num1 = CHAR_MIN - 1;
	short num2 = SHRT_MIN - 1;
	int num3 = INT_MIN - 1;
	long long num4 = LLONG_MIN - 1;

	printf("%d %d %d %lld\n", num1, num2, num3, num4);

	unsigned char num5 = 0 - 1;

	unsigned short num6 = 0 - 1;

	unsigned int num7 = 0 - 1;

	unsigned long long num8 = 0 - 1;

	printf("%u %u %u %llu\n", num5, num6, num7, num8);

	return 0;
}
```



![image-20220707224243250](https://github.com/jinsirie/TIL/blob/9fce695088ffe5e4d22b721754622ec8cfaf06fc/img/image-20220707224243250.png)



##### #CASE 5

- C99 표준부터 stdint.h  헤더파일을 사용하여 크기가 표시된 정수 자료형으로 변수를 선언한다.



```c
#include <stdio.h>
#include<stdint.h>

int main()
{
	int8_t num1 = -128;
	int16_t num2 = 32767;
	int32_t num3 = 2147483647;
	int64_t num4 = 9223372036854775807;

	printf("%d %d %d %lld\n", num1, num2, num3, num4);

	uint8_t num5 = 255;
	uint16_t num6 = 65535;
	uint32_t num7 = 4294967295;
	uint64_t num8 = 18446744073709551615;

	printf("%u %u %u %llu\n", num5, num6, num7, num8);
	return 0;
 
}
```





 ![image-20220707224754899](https://github.com/jinsirie/TIL/blob/9fce695088ffe5e4d22b721754622ec8cfaf06fc/img/image-20220707224754899.png)