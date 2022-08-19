## C_Languages l 220819



#### 1. 배열의 요소 합계 구하기

```c
#include <stdio.h>

int main()
{
	//크기가 10인 int형 배열
	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };
	int sum = 0;	//합을 저장할 변수는 0으로 초기화

	for (int i = 0; i < sizeof(numArr) / sizeof(int); i++)	//배열의 요소 개수만큼 반복
	{
		sum += numArr[i];	//sum과 배열의 요소를 더해서 다시 sum에 저장 sum = sum +numArr[i]; 이런거라 생각
	}
	printf("%d\n", sum);	//605

	return 0;


}
```

- 여기서 변수 sum을 '0'으로 초기화해주지 않으면 쓰레기 값이 들어있게 됩니다. 그래서 쓰레기 값과 요소의 값을 더하게 되므로 잘못된 결과가 나오므로, 값을 누적시킬 떄는 변수를 반드시 '0'으로 초기화해주어야한다.







#### 2. 배열의 요소에 저장된 값을 두 배로 만들기

```c
#include <stdio.h>

int main()
{
	//크기가 10인 int형 배열

	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };

	for (int i = 0; i < sizeof(numArr) / sizeof(int); i++)	//배열의 요소 갯수만큼 반복
	{
		numArr[i] *= 2;	// 배열의 요소에 2를 곱해서 다시 요소에 저장
	}
	
	for (int i = 0; i < sizeof(numArr) / sizeof(int); i++)	//배열의 요소 개수만큼 반복
	{
		printf("%d\n", numArr[i]);
	}

	return 0;
}
```

- 배열의 요소에 저장된 값을 두 배로 만들려면 배열의 요소에 접근하여 2로 곱한 뒤 다시 요소에 저장해주면 됩니다.





#### 3. 배열을 포인터에 넣기

```c
#include <stdio.h>

int main()
{
	// 크기가 10인 int형 배열
	int numArr[10] = { 11,22,33,44,55,66,77,88,99,110 };

	int* numPtr = numArr;	//포인터에 int형 배열을 할당

	printf("%d\n", *numPtr);	//11: 배열의 주소가 들어 있는 포인터를 역참조하면 배열의
								// 첫 번째 요소에 접근

	printf("%d\n", *numArr);	//11:배열 자체를 역참조해도 배열의 첫 번째 요소에 접근

	printf("%d\n", numPtr[5]);	// 66:배열의 주소가 들어 있는 포인터는
								// 인덱스로 접근할 수 있음

	printf("%d\n", sizeof(numArr));	//40: sizeof로 배열의 크기를 구하면 배열이
									//메모리에 차지하는 공간이 출력됨

	printf("%d\n", sizeof(numPtr));	//4: sizeof로 배열의 주소가 들어있는 포인터의
									//크기를 구하면 포인터의 크기가 출력됨


	return 0;
}
```

- 배열의 포인터에 할당한 뒤 포인터를 역참조해보면 배열의 첫 번째 요소의 값이 나옵니다. 마찬가지로 배열 자체도 역참조해보면 배열의 첫 번째 요소 값이 나옵니다.



#### 4. 배열을 활용하여 10진수를 2진수로 변환하기

```c
#include <stdio.h>

int main()
{
	int decimal = 13;
	int binary[20] = { 0, };

	int position = 0;
	while (1)
	{
		binary[position] = decimal % 2;	//2로 나누었을 때 나머지를 배열에 저장
		decimal = decimal / 2;

		position++;

		if (decimal == 0)	// 몫이 9이되면 반복이 끝냄
			break;
	}

	//배열의 요소를 역순으로 출력
	for (int i = position - 1; i >= 0; i--)
	{
		printf("%d", binary[i]);
	}
	printf("\n");

	return 0;
}
```

- 10진수를 0이 될때까지 2로 계속 나눈뒤 나머지를 역순으로 읽으면 2진수가 된다.





#### Q. 오늘의 궁금한 점

> int binary[20]={0, }; // 20번째 포인터를 0으로 초기화 한다는 뜻인가
>
> position++ // 자릿수 변경이라는 의미는 무엇일까