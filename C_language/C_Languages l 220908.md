
### 1. 구조체 사용하기

- C 언어는 자료를 체계적으로 관리하기 위해 구조체라는 문법을 제공한다. 구조체는 struct 키워드로 정의하며 `data structure` 약어로 `struct`를 사용한다.


### 2. 구조체를 만들고 사용해보자

```c

#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>

#include <string.h>

  

struct Person {

char name[20];

int age;

char address[100];

};

  

int main()

{

struct Person p1; //구조체 변수 선언

  

//점으로 구조체 멤버에 접근하여 값 할당

strcpy(p1.name, "홍길동");

p1.age=30;

strcpy(p1.address, "서울시 용산구 한남동");

  

//점으로 구조체 멤버에 접근하여 값 출력

printf("이름: %s\n", p1.name); //이름: 홍길동

printf("나이: %d\n", p1.age); //나이: 30

printf("주소: %s\n", p1.address); //주소 : 서울시 용산구 한남동

  

return 0;

}
```


### 3. typedef로 struct 키워드 없이 구조체 선언하기

```c
#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>

#include <string.h>

  

typedef struct _Person {

char name[20];

int age;

char address[100];

} Person; //typedef를 사용해서 구조체 별칭을 Person 으로 정의

  

int main()

{

Person p1; //구조체 별칭 Person으로 변수 선언

  

//점으로 구조체 멤버에 접근하여 값 할당

strcpy(p1.name, "홍길동");

p1.age=30;

strcpy(p1.address, "서울시 용산구 한남동");

  

//점으로 구조체 멤버에 접근하여 값 출력

printf("이름: %s\n", p1.name); //이름: 홍길동

printf("나이: %d\n", p1.age); //나이: 30

printf("주소: %s\n", p1.address); //주소 : 서울시 용산구 한남동

  

return 0;

}

```


### 4. 구조체 포인터 사용하기
- 보통 구조체는 멤버 변수가 여러 개 들어 있어 크기가 큰 편이나, 포인터에 메모리를 할당하여 사용하는 편이 효율적이다. 나중에 함수를 만들어서 구조체를 사용할 때 포인터를 자주 활요하게 된다.

#### 4.1 구조체 포인터를 선언하고 메모리 할당하기

```c
#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>

#include <string.h>

#include <stdlib.h>

  

struct Person { //구조체 정의

char name[20];

int age;

char address[100];

}

  

int main()

{

struct Person *p1=malloc(sizeof(struct Person)); //구조체 포인터 선언, 메모리 할당

  

//화살표 연산자로 구조체 멤버에 접근하여 값 할당

strcpy(p1->name, "홍길동");

p1.age=30;

strcpy(p1->address, "서울시 용산구 한남동");

  

//점으로 구조체 멤버에 접근하여 값 출력

printf("이름: %s\n", p1->name); //이름: 홍길동

printf("나이: %d\n", p1->age); //나이: 30

printf("주소: %s\n", p1->address); //주소 : 서울시 용산구 한남동

  

return 0;

}
```

- 구조체 이름 앞에는 반드시 struct 키워드를 붙여야 하며, 포인터를 선언할 때도 sizeof 크기를 구할 때도 struct 키워드를 넣어준다.
- 구조체의 멤버에 접근하는 방법은 지금까지 .(점)을 사용해서 멤버에 접근했지만 구조체 포인터의 멤버에 접근할 때는 ->(화살표 연산자)를 사용한다.
- p1 -> age = 30; 과 같이 구조체 포인터의 멤버에 접근한뒤 값을 할당하고, p1 ->age 와 같이 값을 가져온다.
- 마지막으로 free(p1); 처럼 할당한 메모리를 해제해 준다.

#### 4.2 구조체 별칭으로 포인터 선언하고 메모리 할당하기

```c
#define _CRT_SECURE_NO_WARNINGS

#include <stdio.h>

#include <string.h>

#include <stdlib.h>

  

typedef struct _Person { //구조체 정의

char name[20];

int age;

char address[100];

} Person;

  

int main()

{

Person *p1=malloc(sizeof(Person)); //구조체 별칭으로 포인터 선언, 메모리 할당

  

//화살표 연산자로 구조체 멤버에 접근하여 값 할당

strcpy(p1->name, "홍길동");

p1.age=30;

strcpy(p1->address, "서울시 용산구 한남동");

  

//점으로 구조체 멤버에 접근하여 값 출력

printf("이름: %s\n", p1->name); //이름: 홍길동

printf("나이: %d\n", p1->age); //나이: 30

printf("주소: %s\n", p1->address); //주소 : 서울시 용산구 한남동

  

free(p1); //동적 메모리 해제

  

return 0;

}
```

- Person *p1과 같이 구조체 별칭으로 포인터를 바로 선언한 뒤 malloc 함수로 메모리를 할당한다.

```c
#include <stdio.h>

  
  

struct Person{

char name[20];

int age;

char address[100];

};

  
  

int main()

{

struct Person p1;

struct Person *ptr;

  

ptr=&p1; ///p1의 메모리 주소를 구하여 ptr에 할당

  

//화살표 연산자로 구조체 멤버에 접근하여 값할당

  

ptr->age=30;

  

printf("나이: %d\n",p1.age);

printf("나이: %d\n",ptr->age);

  

return 0;

}
```

- ptr은 구조체 포인터이므로 -> 로 멤버에 접근하여 값을 할당한다. printf 함수로 p1의 멤버와 ptr의 멤버를 출력해보면 같은 값이 나오는 것을 알 수 있다.
- ptr에 p1의 메모리 주소를 할당했으므로 ptr의 멤버를 수정하면 , 결국 p1의 멤버도 바뀐다.