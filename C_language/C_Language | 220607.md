### C_Language | 220607



##### 1. 구조체(Structure)

프로그래머가 여러 개의 기초 자료형을 묶어서 새로운 자료형을 정의할 수 있는 방법, 구조체는 객체지향 프로그래밍에서 말하는 클래스의 모체



```c
struct student{	//tag	
	int number;		//학번	member
	char name[10];	//이름	member
	double grade;	//학점	member
};
```

> 구조체의 정의는 변수 선언이 아니다. 구조체 정의는 구조체 안에 어떤 변수들이 들어간다는 것만 말해주는 것이며, 위의 구조체 정의는 구조체의 형태(틀)만 정의하는 것이다.

##### 2. 구조체 변수 생성

```c
struct student{
	int number;
	char name[10];
	double grade;
};

int main(void){
	struct student s1;
}
```

> student 라는 구조체를 이요하여 s1이라는 구조체 변수를 만든 것이다. s1이라는 변수 안에는 구조체의 멤버인 number,name,grade가 들어 있다. 컴파일러는 액세스 속도를 빠르게 하기 ㅜ이하여 더 많은 메모리를 할당하는 경우도 있으므로 sizeof 연산자를 이용하는 편이 정확하다.



##### 3. 구조체의 초기화

```c
struct student{
	int number;
	char name[10];
	double grade;
};
struct student s1 = { 24,"Kim",4.3};
```



##### 4. 구조체 멤버 참조

ex.1)

```c
s1.number=20170001;
```



ex.2)

```c
strcpy(s1.name. "Kim");
s1.grade =4.3;	
```



ex.3) student 구조체를 선언하고 구조체 변수 정의 예제

```c
#include <stdio.h>
#include <stdio.h>

//구조체 정의
struct student{
	int number;
	char name[10];
	double grade;

};

int main(void)
{
    //구조체 변수 정의
	struct student s;
	
    //구조체 멤버 참조
	s.number = 20170001;
	strcpy(s.name, "홍길동");
	s.grade = 4.3;

	printf("학번: %d\n", s.number);
	printf("이름: %d\n", s.name);
	printf("학점: %f\n", s.grade);
	
	return 0;

	}

```

ex.4 ) 새로운 초기화 방법

```c
#include <stdio.h>

// 2차원 공간의 점을 구조체로 나타낸다.

struct  point{
	int x;
	int y;
};

int main(void)
{

	struct point p = { 1,2 };
	struct point q = { .y = 2,.x = 1 };
	struct point r = p;
	r = (struct point){ 1,2 };

	printf("p=(%d, %d)\n", p.x, p.y);
	printf("q=(%d, %d)\n", q.x, q.y);
	printf("r=(%d, %d)\n", r.x, r.y);

	return 0;
}
```

