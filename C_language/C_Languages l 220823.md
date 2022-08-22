## C_Languages l 220823



#### 1. 2차원 배열  선언하고 요소에 접근하기

- 자료형 배열이름[세로크기] [가로크기];
- 자료형 배열이름[세로크기] [가로크기]={{값,값,값},{값,값,값}};

```c
#include <stdio.h>

int numArr[3][4]={	//세로 크기 3, 가로 크기 4인 int형 2차원 배열 선언
	{11,22,33,44},
	{55,66,77,88},
	{99,110,121,132}
};

printf("%d\n", numArr[0][0]);	//11
printf("%d\n", numArr[1][2]);	//77
printf("%d\n", numArr[2][0]);	//99
printf("%d\n", numArr[2][3]);	//132

return 0;
}
```



#### 2. 2차원 배열을 초기화하기

```c
#include <stdio.h>

int numArr[3][4]={0,};

printf("%d\n", numArr[0][0]);	
printf("%d\n", numArr[1][2]);	
printf("%d\n", numArr[2][0]);	
printf("%d\n", numArr[2][3]);	

return 0;
}
```



#### 3.  2차원 배열의 크기 구하기



```c
#include <stdio.h>

int main(){
	int numArr[3][4]={
		{11,22,33,44},
		{55,66,77,88},
		{99,110,121,132}
	};
	
	printf("%d\n",sizeof(numArr));	//48: 4바이트 크기의 요소가 12(4*3)개이므로 48
	
	int col=sizeof(numArr[0])/sizeof(int);	//4: 2차원 배열의 가로 크기를 구할 때는 											//가로 한 줄의 크기를 요소의 크기로 나눔
    
   int row=sizeof(numArr)/sizeof(numArr[0]) //3: 2차원 배열의 세로 크기를 구할 때
   										//배열이 차지하는 전체 공간을 가로 한줄의
   										크기로 나눠줌
   	
   	prinf("%d\n",col);
   	prinf("%d\b",row);
   	
   	return 0;
}
```





#### 4. 반복문으로 2차원 배열의 요소를 모두 출력하기

```c
#include <stdio.h>

int main()
{
	int numArr[3][4]={
	{11,22,33,44},
	{55,66,77,88},
	{99,110,121,132}
	};
	
	int col=sizeof(numArr[0])/sizeof(int);
	
	int row=sizeof(numArr)/ sizeof(numArr[0]);
	
	for (int i=0;i<row;i++)
	{
		for(int j=0;j<col;j++)
		{
			printf("%d",numArr[i][j]);
		}
			printf("\n");
	}
	return 0;
}
```



#### 5. 역순으로 출력하기

```c
#include <stdio.h>

int main()
{
	int numArr[3][4] = {
		{11,22,33,44},
		{55,66,77,88},
		{99,110,121,132}
	};

	int col = sizeof(numArr[0]) / sizeof(int);

	int row = sizeof(numArr) / sizeof(numArr[0]);

	for (int i = row - 1; i >= 0; i--)
	{
		for (int j = col - 1; j >= 0; j--)
		{
			printf("%d", numArr[i][j]);
		}
		printf("\n");
	}
	return  0;
}
```

