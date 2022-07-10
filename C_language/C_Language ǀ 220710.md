## C Languages | 220708



#### CASE #1 리터럴 사용하기

```c
#include <stdio.h>

int main()
{
	printf("%d\n", 10);
	printf("%d\n", 0.1f);
	printf("%c\n", 'a');
	printf("%s\n", "Hello world!");

	return 0;
}
```

- 리터럴은 반드시 표기 방법을 지켜주어야 한다. 숫자는 숫자 그대로 사용해도 되지만 문자는 반드시 작은따옴표로 묶어줘야하고 문자열은 큰따옴표로 묶어준다. 문자나 문자열을 따옴표로 묶어주지 않으면 변수, 함수등으로 인식되므로 주의가 필요하다.



```c
#include <stdio.h>

int main()
{
	printf("%d\n", 19);		// 19: 10진 정수 리터럴
	printf("0%o\n", 017);	// 017: 8진 정수 리터럴
	printf("0x%X\n", 0x1F); // 0x1F: 16진 정수 리터럴 

	return 0;
}
```

- 10진수는 숫자 그대로 표기, 8 진수는 숫자 앞에 '0'을 붙인다. 16진수는 0x를 붙입니다. printf에서 8진수를 출력하려면 서식지정자로 %o로 사용합니다. 여리거 %o로는 8진수 숫자만 출력되므로 10진수와 구분하기 힘듭니다. 그래서 %o앞에 숫자0을 붙여서 017 형태로 출력합니다.



#### CASE #2 리터럴 사용하기

```c
#include <stdio.h>

int main()
{
	printf("%f\n", 0.1f);	//0.100000: 실수 리터럴 소수점 표기
	printf("%f\n", 0.1F);	// 0.10000: 실수 리터럴 소수점 표기
	printf("%f\n", 1.0e-5f); //0.000010: 실수 리터럴 지수 표기법
	printf("%f\n", 1.0E-5F); // 0.00010: 실수 리터럴 지수 표기법

	return 0;
}
```

- 실수 리터럴이 float크기라면 끝에 f 또는 F를 붙이고, long double 크기라면 l 또는 L를 붙입니다. 지수 표기법은 e 또는 E를 붙입니다.



##### CASE #3  CONSTANT 사용하기

```c
#include <stdio.h>

int main()
{
	const int con1 = 1;			//상수, 선언과 동시에 초기화
	const float con2 = 0.1f;	//상수, 선언과 동시에 초기화
	const char con3 = 'a';		//상수, 선언과 동시에 초기화

		printf("%d %f %c\n", con1, con2, con3);		// 1 0.100000 a
	return 0;
}
```

- 상수는 반드시 선언과 동시에 값을 할당하여 초기화해주어야 하며, 초기화 하지 않으면 컴파일 에러가 발생한다.

##### CASE #4  CONSTANT 에러 확인하기

```c
#include <studio.h>

int main()
{
	const int con1 =1;
	con1 =2; // 상수에 값을 할당하면 컴파일 에러 발생
	printf("%d\n", con1);
	return 0
}
```

> > C:\Users\User\source\repos\Literal\Literal\literal.c(6,2): error C2166: l-value가 const 개체를 지정합니다.





##### CASE #5 정수 리터럴 접미사 사용하기 1

```c
#include <stdio.h>

int main()
{
	printf("%ld\n", -10L);
	printf("%lld", -1234567890123456789LL);

	printf("%u\n", 10U);
	printf("%lu\n", 1234567890UL);

	printf("%lu\n", 10UL);
	printf("%llu\n", 123456789ULL);

	return 0;
}
```





##### CASE #6 정수 리터럴 접미사 사용하기 2

```c
#include <stdio.h>

int main()
{
	printf("0%lo\n", 017L);		//long 크기의 8진 정수 리터럴
	printf("0%lo\n", 017UL);	//unsigned long 크기의 8진 정수 리터럴
	printf("0x%1X\n", 0x7FFFFFL);	// long 크기의 16진 정수 리터럴
	printf("0x%1X\n", 0xFFFFFFFFUL);	//unsigned long 크기의 16진 정수 리터럴
}
```

