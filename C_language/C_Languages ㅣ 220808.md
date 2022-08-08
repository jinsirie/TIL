## C_Languages ㅣ 220808

#### 1.goto 제어문

- goto는 별다른 제약 조건 없이 원하는 부분으로 이동할 수 있기 때문에 , goto를 적절히 활용하면 중복되는 코드를 없앨 수 있고, 코드를 좀 더 간결하게 만들 수 있습니다.
- goto는 레이블을 지정해서 사용한다. :(콜론)을 붙이며 이름을 짓는 규칙은 변수와 같다.

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	int num1;

	scanf("%d", &num1);

	if (num1 == 1)
		goto ONE;
	else if (num1 == 2)
		goto TWO;
	else
		goto EXIT;


ONE:	//레이블 ONE
	printf("1입니다.\n");
	goto EXIT;
TWO:	//레이블 TWO
	printf("2입니다.\n");
	goto EXIT;
EXIT:	//레이블 EXIT
	return 0;
}
```





##### #연습문제 : Switch에서 반복문 빠져 나오기

```c
#include <stdio.h>

int main()
{
	int num1 = 1;

	for (int i = 0; i < 10; i++)
	{
		switch (num1)
		{
		case 1:
			printf("1입니다.\n");
			goto EXIT;
		default:
			break;
		}
	}

	EXIT:
	return 0;
}
```

