## C_Languages l 220729



#### 1. 부호 있는 자료형의 비트 연산 알아보기



````c
#include <stdio.h>

int main()
{
	unsigned char num1 = 131;	// 131: 1000 0011
	char num2 = -125;			// -125: 1000 0011

	unsigned char num3;
	char num4;

	num3 = num1 >> 5;	// num1의 비트 값을 오른 쪽으로 5번 이동
	num4 = num2 >> 5;	// num2의 비트 값을 오른 쪽으로 5번 이동

	printf("%u\n", num3);	// 4: 0000 0100: 맨 뒤의 11은 사라지고 0000  0100이 됨
	printf("%d\n", num4);	//-4: 1111 1100: 모자라는 공간은 부호 비트의 값인 1로
							//채워지므로 1111 1100이 됨

	return 0;
}
````

- 부호 있는 자료형의 첫 번째 비트는 부호 비트라고 하는데, 이 비트가 1이면 음수, 0이면 양수입니다. 비트 연산자는 부호 있는 자료형과 부호 없는 자료형이 다르게 동작합니다.

```c
#include <stdio.h>

int main()
{
	char num1 = 113;
	char num2 = -15;
	char num3, num4, num5, num6;

	num3 = num1 << 2;
	num4 = num2 << 2;

	num5 = num1 << 4;
	num6 = num2 << 4;

	printf("%d\n", num3);
	printf("%d\n", num4);

	printf("%d\n", num5);
	printf("%d\n", num6);

	return 0;
}
```

- 부호 있는 자료형에서 첫 번째 비트가 0인 양수를 왼쪽으로 2번이동시키면 1이 부호 비트를 덮어쓰게 됩니다.(오버플로우 상황). 따라서, 양수였던 수가 음수가 되어버립니다.