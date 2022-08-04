





#### #Case.1 continue

```c
#include <stdio.h>

int main()
{
	for (int i = 1; i <= 100; i++)
	{
		if (i % 2 != 0)
			continue;
		printf("%d\n", i);
	}

	return 0;
}
```

- for를 사용하여 1부터 100까지 반복하여 if 를 사용하여 i 가 홀수이면 continue를 실행

```c
#include <stdio.h>

int main()
{
	int i = 1;
	while (i<=100)
	{
		i++;
		if (i % 2 != 0)
			continue;

		printf("%d\n", i);

	}
	return 0;
}
```



#### #Case.2 입력한 횟수대로 반복하기

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	int count;

	scanf("%d", &count);

	int i = 1;
		while (1)
		{
			printf("%d\n", i);
			if (i == count)
				break;

			i++;

		}
		return 0;
}
```

- 5를 입력했으므로 1부터 5까지 출력된 뒤의 i의 값과 count의 값이 같으므로 반복문이 끝남
- while 1을 지정하였으므로 무한루프로 만듬



#### #Case.3 입력한 숫자까지 짝수 출력하기

```c
#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main()
{
	int count;

	scanf("%d", &count);

	for (int i = 1; i <= count; i++)
	{
		if (i % 2 != 0)
			continue;
		printf("%d\n", i);
	}
		return 0;
}
```

- scanf 함수로 입력 값을 받아서 count 변수에 저장하고 for 조건식에 i<=count 처럼 지정하여 count 들어있는 값만큼 반복하도록 진행