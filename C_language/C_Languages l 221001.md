## C_Languages l 221001





### 1. void 포인터 반환하기

- void 포인터는 강제로 변환하지 않아도 다양한 형태의 포인터에 넣을 수 있다.

```c
#define _CRT_SECURE_NO_WARNINGS  //strcpy 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <stdlib.h>				//malloc, free 함수가 선언된 헤더 파일
#include <string.h>				//strcpy 함수가 선언된 헤더 파일

void* allocMemory()				//void 포인터를 반환하는 동적 메모리 할당
{
	void* ptr = malloc(100);
			
	return ptr;					//void 포인터 반환
}

int main()
{
	char* s1 = allocMemory();	// void 포인터를 char 포인터에 넣어서 문자열처럼 사용
	strcpy(s1, "Hello world");	// s1에 Hello,world! 복사
	printf("%s\n", s1);			// Hello, world!
	free(s1);					// 동적 메모리 해제

	int* numPtr1 = allocMemory();	//void 포인터를 int 포인터에 넣어서 정수 배열처럼 사용
	numPtr1[0] = 10;				//첫 번 째 요소에 10 저장
	numPtr1[1] = 20;				//두 번 째 요소에 20 저장
	printf("%d %d", numPtr1[0], numPtr1[1]);	//동적 메모리 해제
	free(numPtr1);

	return 0;
}
```



#### 2. 구조체와 구조체 포인터 반환하기

- C언어의 함수는 값을 하나만 반환할 수 있다. 예를 들어 이름, 나이, 주소를 각각 얻어오려면 항목마다 함수를 만들어야 해서 비효율적이다. 이럴때는 구조체를 반환한다.

```c
struct 구조체이름 함수이름()
{
	return 구조체 변수;
}
```



```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>


struct Person {
	char name[20];
	int age;
	char address[100];
};

struct Person getPerson()
{
	struct Person p;

	strcpy(p.name, "홍길동");
	p.age = 30;
	strcpy(p.address, "서울시 용산구 한남동");

	return p;	//구조체 변수 반환
}

int main()
{
	struct Person p1;

	p1 = getPerson(); //반환된 구조체 변수의 내용이 p1로 모두 복사됨

	//getPerson에서 저장한 값이 출력됨

	printf("이름: %s\n ", p1.name);
	printf("나이: %s\n ", p1.age);  //2019 visual studio 실행 시 출력안됨
	printf("주소: %s\n ", p1.address); //2019 visual studio 실행 시 출력안됨

	return 0;
}

```

- 구조체 변수를 반환한 뒤 다른 변수에 저장하면 반환된 구조체의 내용을 모두 복사하게  된다. 여기서는 Person의 구조체의 멤버가 3 개 뿐이라 큰 문제 없다.
- 구조체를 반환 할때는 구조체 복사가 일어나지 않도록 malloc 함수로 동적 메모리를 할당한 뒤, 구조체 포인터를 반환하는 것이 좋다.





```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <string.h>
#include <stdlib.h>


struct Person {
	char name[20];
	int age;
	char address[100];
};



struct Person {
	char name[20];
	int age;
	char address[100];
};

struct Person* allocPerson()
{
	struct Person* p = malloc(sizeof(struct Person));
	strcpy(p->name, "홍길동");
	p->age = 30;
	strcpy(p->address, "서울시 용산구 한남동");

	return p;
}

int main()
{
	struct Person* p1;
	
	p1 = allocPerson();		// 포인터를 반환하며 p1에 메모리 주소 저장

	//allocPerson에서 저장한 값들이 출력됨
	printf("이름: %s\n ", p1->name);
	printf("나이: %s\n ", p1->age);
	printf("주소: %s\n ", p1->address);

	free(p1);	//동적 메모리 해제

	return 0;
}


```

- 주요 골자는 struct Person *allocPerson()과 같이 반환형 자료형을 구조체 포인터로 지정해주고, 그 함수 안에서 구조체 포인터에 메모리를 할당하고 값을 저장한 뒤 구조체 포인터를 반환한다.

#ERROR

```
1>C:\Users\User\source\repos\void_221001\void_221001\void.c(39,9): warning C4477: 'printf' : 서식 문자열 '%s'에 'char *' 형식의 인수가 필요하지만 variadic 인수 1의 형식이 'int'입니다.
```

