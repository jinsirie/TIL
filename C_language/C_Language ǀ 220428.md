---
attachments: [Clipboard_2022-04-28-19-39-58.png, Clipboard_2022-04-28-19-47-00.png, Clipboard_2022-04-28-19-58-07.png]
title: C_Language | 220428
created: '2022-04-28T10:26:39.538Z'
modified: '2022-04-28T10:58:56.282Z'
---

## C_Language | 220428



- 배열은 여러 개의 변수를 하나로 묶는 것

> 자료형 배열이름[배열크기];
> int s[10]


1.배열의 예시
```
int prices[60];
double costs[12];
char names[50];
```



2.예제 1

```
#include <stdio.h>
#define SIZE 5 //배열의 크기를 기호 상수로 정의한다.

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

![](@attachment/Clipboard_2022-04-28-19-39-58.png)


3.예제 2
문자형 배열을 만들 수 있다. 예를 들어서 'a'부터 'z'까지의 문자를 저장하고 있는 문자형 배열 codes[]를 생성해서 'a','b',,,'z'저장하고 다시 꺼내서 화면에 출력하기


```
#include <stdio.h>
#define SIZE 26

int main(void)
{
	int i;
	char codes[SIZE];

	for (i = 0; i < SIZE; i++)
		codes[i] = 'a' + i;

	for (i = 0; i < SIZE; i++)
	 printf("%c", codes[i]);
	 printf("\n");

	 return 0;
}

```

![](@attachment/Clipboard_2022-04-28-19-47-00.png)


4. 예제 3
학생들의 성적을 받아서 배열에 저장하고 평균을 계산하여 출력해보자. Scanf()를 사용할 때는 변수와 마찬가지로 배열 요소에 & 연산자를 사용하여서 배열요소의 주소를 보내주어야 한다.

```
#include <stdio.h>

#define STUDENTS 5 // 기호 상수 : 배열의 크기를 나타낸다

int main(void)

{
	int scores[STUDENTS]; // 배열 정의
	int sum = 0;
	int i, averages;

	// 학생들의 성적을 키보드로부터 받는다.
	for (i = 0; i < STUDENTS; i++)
	{
		printf("학생들의 성적을 입력하시오: ");
		scanf_s("%d", &scores[i]);
	}
	
	for (i = 0; i < STUDENTS; i++)
		sum += scores[i];

	averages = sum / STUDENTS;
	printf("성적 평균 = %d\n", averages);

	return 0;


}

```


![](@attachment/Clipboard_2022-04-28-19-58-07.png)

