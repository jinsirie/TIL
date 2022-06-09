#### C_Language | 220609



##### 1. 구조체와 함수

구조체는 함수의 인수로도 사용이 가능하고 함수에서 반환값으로 반환될 수 있다.



##### 1.1구조체를 함수의 인수로 넘기는 방법



```c
int equal (struct student s1, struct student s2)
{
	if( strcmp(s1.name, s2.name) == 0) //strcmp 함수가 0을 반환하면 두 개의 문자열이 같다는 의미
		return 1;
	else
		return 0;
}
```



##### 1.2 구조체를 함수의 반환 값으로 넘기는 방법

 정수나 실수 등의 기본 자료형을 반환 값으로 넘기는 예제만을 다루었는데, 구조체도 함수의 반환값으로 넘길 수 있다. 반환값의 형을 구조체로 표시해주면 되며, 구조체를 반환하게 하면 함수가 하나 이상의 값을 반환할 수 있다.



```c
struct student make_studnet(void)
{
	struct student s;
	
	printf("나이:");
	scanf_s ("%d",&s.age);
	printf("이름:");
	scanf_s ("%s",s.name);
	prinf("키:");
	scanf("%f", &s.grade);
	
	return s;
}
```





##### 예제 #1

- 벡터(vector) 연산을 수행하는 함수를 제작해보자.

```c
#include <stdio.h>

struct vector
{
	float x;
	float y;

};
struct  vector get_vector_sum(struct vector a, struct vector b);
int main(void)
{
	struct vector a = { 2.0, 3.0 }; 
	struct vector b = { 5.0, 6.0 };
	struct vector sum;
	
	sum = get_vector_sum(a, b);
	printf("벡터의 합은 (%f,%f)입니다.\n", sum.x, sum.y);

	return 0;
}

struct  vector get_vector_sum(struct vector a, struct vector b)
{
	struct vector result;
	result.x = a.x + b.x;
	result.y = a.y + b.y;

	return result;
}
```

![image-20220609212533383](https://github.com/jinsirie/TIL/blob/361206ac7afdce98c81fa49482a85477de323bd4/img/image-20220609212533383.png)