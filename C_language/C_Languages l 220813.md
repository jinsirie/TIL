

## C_Languages l 220813





```c


#include <stdio.h>

int main()
{
	int* numPtr;	//포인터 변수 선언
	int num1 = 10;	//정수형 변수를 선언하고 10

	numPtr = &num1;	//num1의 메모리 주소를 포인터 변수에 저장

	*numPtr = 20;	//역참조 연산자로 메모리 주소에 접근하여 20을 저장

	printf("%d\n", *numPtr);	//20: 역참조 연산자로 메모리 주소에 접근하여 값을 가져옴
	printf("%d\n", num1);

	return 0;

}
```









![image-20220813181854291](https://github.com/jinsirie/TIL/blob/add2b030de0cd0cbe1fde8ec0120cfeb0d26dd6a/img/image-20220813181854291.png)

- 디버거를 사용하면 변수의 메모리 주소,포인터, 역참조를 확인하기가 편리하다.
- num1은 int 자료형이므로 4바이트며, 0a 00 00 00과 같이 숫자 4개를 차지하게 되고 `F10`를  눌러 *numPtr=20;이 있는 줄을 실행하면 메모리장 1을 보면 0a가 14로 바뀌어진걸 확인할 수 있다.

![image-20220813182624274](https://github.com/jinsirie/TIL/blob/add2b030de0cd0cbe1fde8ec0120cfeb0d26dd6a/img/image-20220813181854294.png)







```c
#include <stdio.h>

int main()
{
	long long* numPtr1;	// long long 형 포인터 선언
	float* numPtr2;		// float 포인터 선언
	char* cPtr1;		// char 포인터 선언

	long long num1 = 10;
	float num2 = 3.5f;
	char c1 = 'a';

	numPtr1 = &num1;	//num1의 메모리 주소 저장
	numPtr2 = &num2;	//num2 메모리 주소 저장
	cPtr1 = &c1;		//c1 메모리 주소 저장

	printf("%lld\n", *numPtr1);	//10
	printf("f\n", *numPtr2);	//3.500000
	printf("c\n", *cPtr1);		//a

	return 0;

}
```

- C언어에서 사용할 수 있는 모든 자료형은 포인터로 만들 수 있고, 포인터에 저장되는 메모리 주솟값은 정수형으로 같지만 선언하는 자료형에 따라 메모리에 접근하는 방법이 달라집니다. 다음과 같이 포인터를 역참조하면 선언한 자료형의 크기에 맞게 값을 가져오거나 저장하게된다.
  - long long 포인터는 8바이트 크기만큼 값을 가져오거나 저장하고, char 포인터는 1바이트 크기만큼 값을 가져오거나 저장



## 2. void포인터  선언하기









```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int num1 = 10;
	char c1 = 'a';
	int* numPtr1 = &num1;
	char* cPtr1 = &c1;

	void* ptr;	//void 포인터 선언

	//포인터 자료형이 달라도 컴파일 경고가 발생하지 않음
	ptr = numPtr1;	//void 포인터에 int 포인터 저장
	ptr = cPtr1;	//void 포인터에 char 포인터 저장

	//포인터 자료형이 달라도 컴파일 경고가 발생하지 않음
	numPtr1 = ptr;	//int 포인터에 void 포인터 저장
	cPtr1 = ptr;	//char 포인터에 voi 포인터 저장

	return 0;

}
```

- 기본적으로 C 언어는 자료형이 다른 포인터끼리 메모리 주소를 저장하면 컴파일 경고가 발생하는데, void 포인터는 자료형이 정해지지 않은 특성 떄문에 어떤 자료형으로 된 포인터든 모두 저장할 수 있다. 반대로 다양한 자료형으로 된 포인터에도 void 포인터를 저장할 수 있는데, 이런 특성 떄문에 void 포인터는 범용 포인터라고 한다. 즉, 직접 자료형을 변환하지 않아도 암시적으로 자료형이 변환되는 방식
- 자료형이 정해지지 않았으므로 값을 가져오거나 저장할 크기도 정해지지 않으므로, 역참조할 수 없다.
- 함수의 반환 포인터를 다양한 자료형으로 된 포인터에 저장할 때, 자료형을 숨기고 싶을 때 사용한다.



#### 2.1 이중 포인터

*을 두 번 사용하면 포인터의 포인터(이중 포인터)를 선언하고, 포인터도 실제로는 변수이기 때문에 메모리 주소를 구할 수 있다.

```c
#include <stdio.h>

int main()
{
	int* numPtr1;	//단일 포인터 선언
	int** numPtr2;	//이중 포인터 선언
	int num1 = 10;

	numPtr1 = &num1;	//num1의 메모리 주소 저장

	numPtr2 = &numPtr1;		//numPtr1의 메모리 주소 저장

	printf("%d\n", **numPtr2);	//20: 포인터를 두 번 역참조하여 num1의 메모리 주소에 접근

	return 0;
}
```



#### 2.2 잘못된 포인터 사용



```c
#include <stdio.h>

int main()
{
	int* numPtr = 0x100;	//포인터에 0x100을 직접 저장
	
	printf("%d\n", *numPtr);	//0x100은 잘못된 메모리 주소이므로 실행 에러

	return 0;
}
```

- 실제로 존재하는 메모리 주소라면 저장할 수 있고, 보통 임베디드 시스템이나 마이크로프로세서에서 제공하는 메모리 주소를 사용할 때 포인터에 직접 저장하기도 합니다.