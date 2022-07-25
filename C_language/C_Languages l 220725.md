

## C_Languages l 220725



#### 1.stdbool.h 헤더파일 사용

```c
#include <stdio.h>
#include<stdbool.h>

int main()
{
	bool b1 = true;

	if (b1 == true)	//b1이 true 인지 검사
		printf("참\n");
	else
		printf("거짓\n");

	return 0;
}
```

- #inlcude 로 stdbool.h 헤더 파일을 포함한 뒤 불 자료형 bool 과 값 true, false를 사용하면됩니다. 여기서는 b1에 true를 할당하였고, if 조건문으로 b1이 true인지 비교





#### 2.불자료형 활용

```c
#include <stdio.h>
#include<stdbool.h>

int main()
{
	bool b1 = true;
	bool b2 = false;

	if (b1 && true)
		printf("참\n");
	else
		printf("거짓\n");

	printf("%s\n", b2 || false ? "참" : "거짓");

	return 0;
}
```

