## C_Languages l 220803



##### Case #1 반복 횟수가 정해지지 않은 경우

```c
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main()
{
	srand(time(NULL));	//현재 시간 값으로 시드 설정

	int i = 0;
	do
	{
		i = rand() % 10;	// rand 함수를 사용하여 무작위로 정수를 생성한 뒤
							// 10미만의 숫자로 만듦
		printf("%d\n", i);
	} while (i != 3);

	return 0;

}
```



##### Case  #2  While에서 조건식 대신 1을 지정하면 무한히 반복하는 무한루프 만들기

```c
#include <stdio.h>

int main()
{
	do
	{
		printf("Hello, world!\n");
	} while (1);	//while 에 1을 지정하면 무한 루프

	return 0;
}

```

> while 에서 조건식 대신이 '0'을 지정하면 do 부분의 코드가 한 번만 실행된다.





### 1. Break, Continue로 반복문 제어하기

#### 1.1 Break 

- 제어흐름을 중단하고 빠져나오지만 continue는 제어흐름(반복)을 유지한 상태에서 코드의 실행만 건너뛰는 역활을 한다.

```
#include <stdio.h>

int main()
{
	int num1 = 0;

	while (1)
	{
		num1++;

		printf("%d\n", num1);

		if (num1 == 100)
			break;

	}
}
```

