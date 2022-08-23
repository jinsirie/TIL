

## C_Languages l 220824





#### 1. 포인터에 할당된 메모리를 2차원 배열처럼 사용하기



```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int** m = malloc(sizeof(int*) * 3); // sizeof(int *)처럼 포인터의 크기를 구한 뒤 세로 크기 3을 곱해줍니다.
}


for (int i = 0; i < 3; i++)
{
	m[i] = malloc(sizeof(int) * 4);	// (int 크기* 가로 크기)만큼 동적 메모리 할당
}

m[0][0] = 1;
m[2][0] = 5;
m[2][3] = 2;

printf("%d\n", m[0][0]);
printf("%d\n", m[2][0]);
printf("%d\n", m[2][3]);

for (int i = 0; i < 3; i++)
{
	free(m[i]);
}

free(m);

return 0;
}


```



#### 2. 입력한 크기만큼 메모리를 할당하여 포인터를 2차원 배열 처럼 사용

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int row, col;

	scanf("%d %d", &row, &col);

	int** m = malloc(sizeof(int*) * row);	//이중 포인터에 (int 포인터 크기* row) 만큼 동적 메모리 할당


	for (int i = 0; i < row; i++)
	{
		m[i] = malloc(sizeof(int) * col);	// (int의 크기 *col)만큼 동적 메모리 할당
	}

	for (int i = 0; i < row; i++)	//세로 크기만큼 반복
	{
		for (int j = 0; j < col; j++)	//가로 크기만큼 반복
		{
			m[i][j] = i + j;		//2차원 배열에 각 요소에 i + j 값을 할당
		}
	}

	for (int i = 0; i < row; i++) //서로 크기 만큼 반복
	{
		for (int j = 0; j < col; j++) // 가로 크기 만큼 반복
		{
			printf("%d", m[i][j]);		//2차원 배열의 인덱스 반복문에 변수 i, j를 지정
		}
		printf("\n");					//가로 요소를 출력한 뒤 다음 줄로 넘어감
	}

	for (int i = 0; i < row; i++)		//세로 크기만큼 반복
	{
		free(m[i]);						//2차원 뱅ㄹ의 가로 공간 메모리 해제
	}

	free(m);							//2차원 배열의 세로 공간 메모리 해제

	return 0;
}
```





**오늘 껀 많이 어려워서 몇번 복습이 필요해보인다....화이팅