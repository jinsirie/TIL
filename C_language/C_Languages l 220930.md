# C_Languages l 220930

## [함수 호출하기]



#### 1.Hello, world! 출력함수 만들기

```c
#include <stdio.h>

void hello()	//반환값이 없는 hello 함수 정의
{
	printf("Hello,world!");
}

int main()
{
	hello();

	return 0;
}
```

##### 1.1 지역변수

```c
#include <stdio.h>

void Hello()
{
	int num1 = 10;
	printf("Hello, %d", num1);
}

int main()
{
	Hello();
	printf("%d", num1);

	return 0;
}
```

![image-20220930224050215](https://github.com/jinsirie/TIL/blob/17869bc9755d41e68bc3ec4f59bb7cf9022f1014/img/image-20220930224050215.png)

> hello 함수 안에 선언된 지역 변수 num1은 hello 함수 안에서만 사용할 수 있고, 함수 바깥에서는 사용할 수 없습니다. 



#### 2.함수 선언과 정의 분리하기

```c
#include <stdio.h>

int main()
{
	Hello();	//hello 함수를 찾을 수 없음. 컴파일 에러

	return 0;
}

void Hello()	//반환값이 없는 hello 함수 정의
{
	printf("Hello, world!\n" );		//Hello, world!
}
```

![image-20220930224546232](https://github.com/jinsirie/TIL/blob/17869bc9755d41e68bc3ec4f59bb7cf9022f1014/img/image-20220930224546232.png)

> main 함수 부분에서는 hello 함수에 대한 정보가 없었기 때문이다. 어떤 함수가 있다는 사실을 알려주려면 함수 선언(function declaration)을 해줘야합니다.

- 반환값자료형 함수이름();



##### 2.1 함수 원형과 함수 본체

- 함수 선언과 정의가 분리된 상태에서는 함수 선언 부분을 함수 원형(function prototype), 함수 정의(function definition)부분을 함수 헤더(function header)와 함수 본체(function body)라고 부릅니다.



```
void hello();		//함수 원형

void hello()
{
	printf("Hello, world!\n")	//함수본체
}
```

```c
#include <stdio.h>


void hello()
{
	printf("Hello,world!\n");
}

int main()
{
	hello();

	return 0;
}
```



#### 3. 함수의 반환값 사용하기

##### 3.1 정수,실수, 불 반환값 사용하기

```c
반환값자료형 함수이름()
{
	retrun 반환값;
}
```



예제1)

```
int one()
{
	return 1;
}
```

- 반환값과 반환값의 자료형이 일치해야한다. ()



예제2) integer 반환값

```c
#include <stdio.h>

int one()
{
	return 1;
}

int main()
{
	int num1;

	num1 = one();

	printf("%d\n", num1);

	return 0;
}
```

- 만약 반환값을 변수에 저장하지 않고 바로 사용하고 싶다면 다음과 같이 printf 안에 함수를 넣어서 실행해도 된다.

```c
printf("%d\n", one());		//one 함수의 반환값을 바로 사용
```

- 함수에서 실수, 불 값을 반환한다.

```c
#include <stdio.h>
#include <stdbool.h>

float realNumber()
{
	return 1.234567f;
}

bool truth()
{
	return true;
}

int main()
{
	float num1;
	bool b1;

	num1 = realNumber();
	b1 = truth();

	printf("%f\n", num1);
	printf("%d\n", b1);

	return 0;
}
```



##### 3.2 포인터 반환하기

- 포인터 반환하려면 반환값 자료형과 함수 이름 사이에 *(애스터리스크) 붙여준다.

```c
반환값자료형 *함수이름()
{
	return 반환값;
}
```



```c
#include <stdio.h>

int* ten()			//int 포인터를 반환하는 ten함수 정의
{
	int num1 = 10;	//num1은 함수 ten을 끝나면 사라진다.

	return &num1;	//함수에서 지역 변수를 주소를 반환하는것은 잘못된 방법
}

int main()
{
	int* numPtr;
	
	numPtr = ten();				//함수를 호출하고 반환값을 numPtr에 저장
	
	printf("%d\n", *numPtr);	// 10: 값이 나오긴 하지만 이미 사라진 변수를 출력하고 있음

	return 0;
}
```

- num1 함수는 ten 안에서만 사용할 수 있는 지역 변수이며 함수가 끝나면 사라집니다. return  &num1; 과 같이  지역 변수의 주소를 반환하는 것은 잘못된 방법이다. 따라서, 포인터를 반환하려면 다음과 같이 malloc함수로 메모리를 할당한 뒤 반환해야한다.







```c
#include <stdio.h>
#include <stdlib.h>	//malloc, free 함수가 선언된 헤더 파일

int* ten()			//int 포인터를 반환하는 ten 함수 정의
{
	int* numPtr = malloc(sizeof(int)); // int 크기만큼 동적 메모리 할당

	*numPtr = 10;	//역참조로 10  저장

	return numPtr;	//포인터 반환
}					//malloc으로 메모리를 할당하면 함수가 끝나도 사라지지 않음

int main()
{
	int* numPtr;
	numPtr = ten();	//함수를 호출하고 반환값을 numPtr에 저장
	printf("%d\n", *numPtr);	//10: 메모리를 해제하기 전까지 안전
	free(numPtr);				//다른 함수에서 할당한 메모리라도 반드시해제해야함
    
	return 0;
}
```

