## C_Languages l 220817

배열은 같은 자료형의 변수를 일렬로 늘어 놓은 상태이며 반복문과 결합하면 연속적이고 반복되는 값을 손쉽게 처리할 수 있습니다.





#### 1. 배열 선언 요소 접근

- 자료형 배열이름[크기];
- 자료형 배열이름[크기]={값, 값, 값};

```c
#include <stdio.h>

int main()
{
	//배열을 생성하고 값 할당
	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };

	printf("%d\n", numArr[0]);	// 11: 배열의 첫 번째(인덱스 0)요소 출력
	printf("%d\n", numArr[5]);	// 66: 배열의 여섯 번째(인덱스 5)요소 출력
	printf("%d\n", numArr[9]);	// 110: 배열의 열 번째(인덱스 9) 요소 출력

	return 0;
}
```

int numArr[10]은 크기가 10인 int형 배열을 선언한다는 뜻입니다. 배열을 선언하면서 값을 초기화할 때는 { } 안의 값 개수는 배열의 크기보다 작아도 되지만 크면 안됩니다.





#### 2. 배열을 0으로 초기화 하기

- 자료형 배열이름[크기] ={0, };



```c
#include <stdio.h>

int main()
{
	int numArr[10] = { 0, };	//배열의 요소를 모두 0으로 초기화

	printf("%d\n", numArr[0]);	//0: 배열의 첫 번째(인덱스 0) 요소 출력
	printf("%d\n", numArr[5]);	//0: 배열의 첫 번째(인덱스 5) 요소 출력
	printf("%d\n", numArr[9]);	//0: 배열의 첫 번째(인덱스 9) 요소 출력

	return 0;
}
```





#### 3. 배열의 요소에 값 할당하기

- 배열[인덱스]=값;

```c
#include <stdio.h>

int main()
{
	int numArr[10];

	numArr[0] = 11;
	numArr[1] = 22;
	numArr[2] = 33;
	numArr[3] = 44;
	numArr[4] = 55;
	numArr[5] = 66;
	numArr[6] = 77;
	numArr[7] = 88;
	numArr[8] = 99;
	numArr[9] = 100;
	
	printf("%d\n", numArr[0]);
	printf("%d\n", numArr[5]);
	printf("%d\n", numArr[9]);

	return 0;

}
```

- 배열의 요소에 접근할 때 인덱스로 음수를 지정하거나, 배열의 크기를 벗어난 인덱스를 지정해도 컴파일 에러가 발생하지 않습니다. 하지만 쓰레기 값이 출력되고, 이는 배열의 범위를 벗어난 인덱스레 접근하면 배열이 아닌 다른 메모리 공간에 접근하게 됩니다.

#### 4. 배열의 크기 구하기

```c
#include <stdio.h>

int main()
{
	//크기가 10인 int 배열
	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };

	printf("%d\n", sizeof(numArr));		//40: 4바이트 크기의 요소가 10개이므로 40
	printf("%d\n", sizeof(int));
	printf("%d\n", sizeof(numArr) / sizeof(int));	//10: 배열의 크기를 구할 때는
													//전체 공간을 요소의 크기로 나눠줌

	return 0;
}
```



#### 5. 반복문의 배열의 요소를 모두 출력



#Case.1

```c
#include <stdio.h>

int main()
{
	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };
	
	for (int i = 0; i < sizeof(numArr) / sizeof(int); i++)// 배열의  갯수만큼 반복
	{
		printf("%d\n", numArr[i]);	//배열의 인덱스에 반복문의 변수 i 를 지정
	}

	return 0;
}
```



#Case.2

```c
#include <stdio.h>

int main()
{
	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };
	
	for (int i = sizeof(numArr) / sizeof(int) - 1; i >= 0; i--)
	{
		printf("%d\n", numArr[i]);	//배열의 인덱스에 반복문의 변수 i 를 지정
	}

	return 0;
}
```

- 배열의 인덱스는 0부터 시작하므로 마지막 요소의 인덱스는 요소의 개수에서 1을 빼줘야 한다.





#### 6.배열의 요소 합계 구하기

```c
#include <stdio.h>

int main()
{
	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };
	int sum = 0;
	
	for (int i = 0; i < sizeof(numArr) / sizeof(int); i++) //배열의 요소 개수 만큼 반복
	{
		sum += numArr[i];	//sum과 배열의 요소를 더해서 다시 sum에 저장
        					// sum = sum + numArr[i];
	}

	printf("%d\n", sum);	//605

	return 0;
}
```

