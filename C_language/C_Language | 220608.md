### C_Language | 220608



#### 1. 구조체 변수의 대입과 비교

```c
struct point{
	int x;
	int y;
};
struct point p1 = {10, 20};
struct point p2 = {30, 40};

```

- p2에 p1을 대입하는 연산을 한다면

```c
p2 = p1;
```

- 구조체 변수를 비교하려면, 별도의 비교 수식을 적어주어야 한다.

```c
if ((p1.x == p2.x) && (p1.y == p2.y))
{
	printf("p1과 p2이 같습니다.")
}
```



#### 2. 구조체의 배열

```c
struct student{
	int number;
	char name[20];
	double grade;
};

struct student list[100];	// 구조체 배열 선언
```

- 배열의 첫 번째 요소에 값을 저장

```c
list[0].number =1;
strcpy(list[0].name,"Park");
list[0].grade=3.42;
```



#### 3. 구조체 배열의 초기화

```c
struct student list[3]={
	{1,"Park",3.42},
	{2,"Kim",4.32},
	{3,"Lee",2.98}
};
```



#CASE.1 --추후 예외수정 22.06.08



```c
#include <stdio.h>
#define SIZE 3

struct  studnet{
	int number;
	char name[20];
	double grade;
};

int main(void)
{
	struct studnet list[SIZE];
	int i;

	for (i = 0; i < SIZE; i++)
	{
		printf("학번을 입력하시오: ");
		scanf_s("%d", &list[i].number);
		printf("이름을 입력하시오: ");
		scanf_s("%s", list[i].name);
		printf("학점을 입력하시오(실수): ");
		scanf_s("%lf", &list[i].grade);
		printf("\n");
	}

	printf("\n======================================================================================\n");
	for (i = 0; i < SIZE; i++)
		printf("학번: %d, 이름:%s, 학점: %f\n", list[i].number, list[i].number, list[i].grade);
	printf("\n======================================================================================\n");
	return 0;
}
```

