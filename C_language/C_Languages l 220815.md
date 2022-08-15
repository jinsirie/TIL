## C_Languages l 220815



#### 1. 메모리 사용하기

지금까지 포인터의 변수에 메모리 주소를 저장하는 방식으로 포인터 사용하였고, 이번에는 포인터에 원하는 만큼 메모리 공간을 할당 받아 사용하는 방법을 알아본다.

메모리는 malloc -> 사용 -> free 패턴으로 사용



#### 2.메모리 할당하기

메모리를 사용하려면 malloc 함수로 사용할 메모리 공간을 확보해야하고 , 이때 필요한 메모리 크기는 바이트 단위로 지정합니다. (메모리 할당, 해제 함수는 stdlib.h 헤더 파일에 선언되어 있다.)

> 포인터 = malloc(크기);
>
> - void *malloc(size_t_Size);
> - 성공하면 메모리 주소를 반환, 실패하면 NULL을 반환
>   - 파일활장자가 .cpp 이면 C++컴파일러 사용하므로 에러가 발생하므로  확장자는 반드시 .c로 지정하여 C 컴파일러를 사용하도록 만들어야 한다.



```c
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int num1 = 20;	//int형 변수 선언
	int* numPtr1;	//int형 포인터 선언

	numPtr1 = &num1;	//num1의 메모리 주소를 구하여 numPtr에 할당

	int* numPtr2;	//int형 포인터 선언

	numPtr2 = malloc(sizeof(int));	//int의 크기 4바이트만큼 동적 메모리 할당

	printf("%p\n", numPtr1);

	printf("%p\n", numPtr2);

	free(numPtr2);

	return 0;
}
```

> - 메모리를 할당할 때는 malloc 함수를 사용하며 할당할 메모리 공간의 크기를 넣어줍니다. 여기서는 sizeof 연산자를 사용하여 int 크기(4바이트)만큼 메모리를 할당하고, 특히 원하는 시점에 원하는 만큼 메모리르 할당할 수 있다고하여 동적 메모리 할당(dynamic memory allocattion)이라 부릅니다.
>
> - 변수는 스택(stack)에 생성되며 malloc 함수는 힙(heap)부분의 메모리를 사용합니다. 스택과 힙의 큰 차이점은 메모리 해제인데, 스택에 생성된 변수는 사용한 뒤 따로 처리를 해주지 않아도 되지만 malloc 함수를 사용하여 힙에서 할당한 메모리를 반드시 해제를 해주어여 한다.

- free(포인터);

  -- void free(void *_Block);

- 메모리를 할당만 하고 해제를 해주지 않으면 결국에는 시스템 메모리가 부족해지므로 운영체제가 프로그램을 강제로 종료시키거나 메모리 할당에 실패하게 됩니다. 메모리를 해제하지 않아 메모리 사용량이 계속 증가하는 현상을 메모리 누수(memory leak)라 합니다.



````c
#include <stdio.h>
#include <stdlib.h>

int main()
{
	int* numPtr;	//int형 포인터 선언

	numPtr = malloc(sizeof(int));	//int의 크기 4바이트만큼 동적 메모리 할당

	*numPtr = 10;	//포인터를 역참조한 뒤 값 할당

	printf("%d\n", *numPtr);	//10: 포인터를 역참조하여 메모리에 저장된 값 출력

	free(numPtr);

	return 0;

}
````

- malloc 함수로 할당한 메모리에 값을 저장할 때는 *numPtr=10;처럼 포인터를 역참조한뒤 값을 저장하면되는데, printf함수로 값을 출력할 때도 포인터를 역참조하여 값을 가져오면 된다.

#### 3. 메모리 내용을 한꺼번에 설정하기

- memset 함수를 사용하면 메모리의 내용을 원하는 크기만큼 특정 값으로 설정할 수 있다.

```c
#include <stdio.h>
#include <stdlib.h> //malloc, free 함수가 선언된 헤더 파일
#include <string.h>	//memset 함수가 선언된 헤더 파일

int main()
{
	long long* numPtr = malloc(sizeof(long long));		//long long 크기 8바이트 만큼
														//동적 메모리 할당

	memset(numPtr, 0x27, 8);	//numPtr이 가리키는 메모리를 8바이트 만큼 0x27로 설정
	printf("0x%llx\n", *numPtr);	//0x2727272727272727: 27이 8개 들어가 있음

	free(numPtr);			//동적으로 할당한 메모리 해제

	return 0;
}
```

- memory 함수를 사용하려면 string.h 또는 memory.h 헤더 파일을 포함해야하며, memset 함수에 포인터, 설정할 값, 설정한 크기를 넣으면 됩니다. 
- memset 함수에 설정할 크기를 지정할 때 보통 숫자 대신 sizeof 를 사용한다.

```c
long long *numPtr= malloc(sizeof(long long));

memset(numPtr, 0, sizeof(long long));
```

- 여기서 메모리를 sizeof ( long long ) 크기만큼 할당했으므로 설정할 크기로 sizeof(long long)과 같이 지정해야하며 sizeof (long long *)와 같이 포인터의 크기를 지정하면 안됩니다. 포인터의 크기를 메모리 주소의 크기일 뿐 실제 메모리가 차지하는 크기가 아닙니다. 

```c
char *cPtr= malloc(sizeif(char));	//char의 크기 1바이트 만큼 동적 메모리 할당

memset(cPtr, 0, sizeof(char));		//char의 크기 1바이트 만큼 0으로 설정
memset(cPtr,0, sizeof(char *));

free(cPtr);
```

- memset함수에서 sizeof 를 사용할 때는 이러한 부분을 주의해야합니다.



#### 4. 널 포인터 사용하기



```c
#include <stdio.h>

int main()
{
	int* numPtr1 = NULL;	//포인터에 NULL 저장
	
	printf("%p\n", numPtr1);

	return 0;
}
```

- 널 포링너튼 아무것도 가리키지 않는 상태를 뜻한다.

```c
if(ptr==NULL)
{
	ptr=malloc(1024);
}
```

