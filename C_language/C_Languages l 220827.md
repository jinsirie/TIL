## C_Languages l 220826



#### 1. 문자열 비교

- strcmp(문자열1, 문자열2);
  - int strcmp(const *_Str1, char const *_Str2);
  - 문자열 비교 결과를 반환

```c
#include <stdio.h>
#include <string.h>

int main()
{
	char s1[10] = "Hello";
	char* s2 = "Hello";

	int ret = strcmp(s1, s2);	//두 문자열이 같은지 문자열 비교

	printf("%d\n", ret);

	return 0;
}
```

| -1    | ASCII코드 기준으로 문자열2(S2)가 클 때       |
| ----- | -------------------------------------------- |
| **0** | **ASCII 코드 기준으로 두 문자열이 같을 때**  |
| **1** | **ASCII  코드 기준으로 문자열1(s1)이 클 때** |

strcmp 함수는 문자열에서 첫 번째 문자부터 차례대로 비교하며 비교 기준은 각 문자의 ASCII코드이다.



#### 2. 사용자가 입력한 두 문자열

```c
#define _CRT_SECURE_NO_WARNINGS		// scanf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <string.h>

int main()
{
	char s1[20];
	char s2[20];

	printf("문자열 두 개를 입력하세요: ");
	scanf("%s %s", s1, s2);

	int ret = strcmp(s1, s2);		//입력된 문자열 비교

	switch (ret)
	{
	case 0:
		printf("두 문자열이 같음\n");
		break;
	case1:
		printf("%s보다 %s가 큼\n", s2, s1);
		break;
	case -1:
		printf("%s보다 %s가 큼", s1, s2);
		break;
	}

	return 0;

}
```



![image-20220826225922882](C:\Users\User\AppData\Roaming\Typora\typora-user-images\image-20220826225922882.png)



> *strcmp 함수는 운영체제에 따라서 동작 방식이 조금 다르다는 점을 유의한다. Windows(Visual Studio)에서는 문자열이 다르면 1과 -1을 반환하지만 리눅스와 OS X에서는 ASCII코드 값의 차이를 반환한다.
>
> - 문자열1의 ASCII 코드 값에서 문자열2의 ASCII 코드 값을 뺏을 때 양수가 나오면 문자열1이 크고, 음수가 나오면 문자열2가 큼
> - ASCII 코드 기준으로 두 문자열이 같으면 '0'





#### 3. 문자열 복사하기

```c
#define _CRT_SECURE_NO_WARNINGS		// scanf 보안 경고로 인한 컴파일 에러 방지
#include <stdio.h>
#include <string.h>

int main()
{
	char s1[10] = "Hello";	//크기가 10인 char형 배열을 선언하고 문자열 할당
	char s2[10];

	strcpy(s2, s1);

	printf("%s\n", s2);

	return 0;

}
```

- strcpy (대상 문자열, 원본문자열);
  - char*strcpy(char *_Destm char const*_Source);
  - 대상 문자열의 포인터 반환

> 문자열 포인터에 복사하게 되면 , 저장된 메모리 주소는 복사할 공간도 없을 뿐만아니라 읽기만 할 수 있으며, 쓰기가 막혀있기때문에 액세스  위반이 발생한다