## C Languages | 220706



##### Review #1  integer.c

```c
#include <stdio.h>

int main() 
{
	char num1 = -10;						//1바이트 부호 있는 정수형으로 변수를 선언하고 값 할당
	short num2 = 30000;						//2바이트 부호 있는 정수형으로 변수를 선언하고 값 할당
	int num3 = -12345678890;				//4바이트 부호 있는 정수형으로 변수를 선언하고 값 할당
	long num4 = 1234567890;					//4바이트 부호 있는 정수형으로 변수를 선언하고 값 할당
	long long num5 = -1234567890123456789;	//8바이트 부호 있는 정수형으로 변수를 선언하고 값 할당

	//char, short, int는 %d로 출력하고 long은 %ld,long long 은 %lld로 출력한다.
	printf("%d %d %d %ld %lld\n", num1, num2, num3, num4, num5);
	// -10 30000 -1234567890 1234567890 -12345678901234567890

	return 0;

}
```

- long 은 %ld를 사용하고 long long %lld를 사용한다.



![image-20220706213246205](https://github.com/jinsirie/TIL/blob/c8286a4ec1db5055011ba13a8f68a685f9ea15ab/img/image-20220706213246205.png)





##### Review #2  unsigned_integer.c

```c
#include<stdio.h>

int main()
{
	unsigned char num1 = 200;

	//1바이트 부호 없는 정수형으로 변수 선언, 값 할당

	unsigned short num2 = 60000;

	//2바이트 부호 없는 정수형으로 변수 선언, 값 할당

	unsigned int num3 = 4123456789;

	//4바이트 부호 없는 정수형으로 변수 선언, 값 할당

	unsigned long num4 = 4123456789;

	//4바이트 부호 없는 정수형으로 변수 선언, 값 할당

	unsigned long long num5 = 12345678901234567890;

	//8바이트 부호 없는 정수형으로 변수를 선언하고 값 할당


	//unsigned char, unsigned short, unsigned int는 %u로 출력하고,
	//unsigned long 은 %lu, unsigned long long %llu로 출력한다.

	printf("%u %u %u %lu %llu\n", num1, num2, num3, num4, num5);

	return 0;
}
```

- 부호 없는 정수 자료형은 unsigned 키워드를 붙여줍니다. 서식 지정자 %d로도 충분히 출력할  수 있지만  unsigned int  %u, unsigned long %lu, unsigned long long은 %llu 로 출력해야 합니다.



![image-20220706213940953](https://github.com/jinsirie/TIL/blob/c8286a4ec1db5055011ba13a8f68a685f9ea15ab/img/image-20220706213940953.png)





#### 오버플로우 , 언더플로우

##### CASE #1. integer_overflow.c

```c
#include <stdio.h>

int main ()
{
	char num1 = 128; 
	//char에 저장할 수 있는 최댓값 127보다 큰 수를 할당 오버플로우 발생

	unsigned char num2 = 256;
	//unsigned char에 저장할 수 있는 최댓값 255보다 큰수를 할당, 오버플로우 발생

	printf("%d %u\n", num1, num2);
	//-128 0: 저장할 수 있는 범위를 넘어서므로 최소값부터 다시 시작

	return 0;
}
```



![image-20220706214645428](https://github.com/jinsirie/TIL/blob/c8286a4ec1db5055011ba13a8f68a685f9ea15ab/img/image-20220706214645428.png)



