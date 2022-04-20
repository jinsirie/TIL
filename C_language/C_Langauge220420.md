### C Language | 220420





- 손쉽게 대량의 데이터를 저장할 수 있는 공간을 만들 수 있어야 하구, 이들 데이터들을 손쉽게 처리할 수 있는 방법이 필요하게되고 이를 해결할 수 있는 방법이 배열이다.
- 배열(array)은 동일한 타입의 데이터가 여러 개 저장되어 있는 데이터 저장 장소이며, 배열 안에 들어있는 각각의 데이터들은 번호에 의해서 식별된다. 이를 인덱스(index) 라고 한다.



#CASE1 숫자배열 

```c
#include <stdio.h>
#define SIZE 5

int main(void)
{
	int i;
	int scores[SIZE];
		scores[0] = 10;
		scores[1] = 20;
		scores[2] = 30;
		scores[3] = 40;
		scores[4] = 50;

		for (i = 0; i < SIZE; i++)
			printf("scores[%d]=%d\n", i, scores[i]);
		return 0;
}
```







![image-20220420211408909](https://github.com/jinsirie/TIL/blob/60553170d3543dff5959ced11c1ba4dd1eabc1bc/img/image-20220420211408909.png)







#CASE 2

문자형 배열도 만들수 있다.

```c
#include <stdio.h>
#define SIZE 26

int main(void)
{
	int i;
	char codes[SIZE];

	for (i = 0; i < SIZE; i++)
		codes[i] = 'a' + i; // 'a'에 1을 더하면 'b'가 된다

	for (i = 0; i < SIZE; i++)
			printf("%c", codes[i]);
	printf("\n");
	return 0;

}
```

![image-20220420212251811](https://github.com/jinsirie/TIL/blob/60553170d3543dff5959ced11c1ba4dd1eabc1bc/img/image-20220420212251811.png)





#CASE3  배열에 저장하고 평균을 계산한다.

```c
#include <stdio.h>
#define STUDENTS 5 // 기호 상수 : 배열의 크기를 나타낸다.

int main(void)
{
	int scores[STUDENTS]; //배열 정의
	int sum = 0;
	int i, average;

	for (i = 0; i < STUDENTS; i++) //학생들의 성적을 키보드로부터 받고
	{
		printf("학생들의 성적을 입력하시오: ");
			scanf_s("%d", &scores[i]);
	}

	for (i = 0; i < STUDENTS; i++) //성적의 합계를 구하고
		sum += scores[i];

	average = sum / STUDENTS;
	printf("성적 평균 = %d\n", average); //평균을 구하고 출력한다

	return 0;

}
```





![image-20220420213218856](https://github.com/jinsirie/TIL/blob/d1c555b40b03dbf9e81fcae9ae8537c49edb2eac/img/image-20220420213218856.png)
